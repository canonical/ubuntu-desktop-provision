use std::{pin::Pin, time::Duration};

use chrono::Utc;
use prost_types::Timestamp;
use protos::landscape::{
    landscape_installer_attach_server::{LandscapeInstallerAttach, LandscapeInstallerAttachServer},
    AttachResponse, AttachStatus, AuthenticationStatus, WatchAuthenticationRequest,
    WatchAuthenticationResponse,
};
use tokio::{sync::mpsc, time::sleep};
use tokio_stream::{wrappers::ReceiverStream, Stream};
use tonic::{transport::Server, Request, Response, Status};

pub mod protos;

#[derive(Clone, Default)]
pub struct LandscapeService {}

#[tonic::async_trait]
impl LandscapeInstallerAttach for LandscapeService {

    // Returns a mock user code and duration
    async fn attach(&self, _request: Request<()>) -> Result<Response<AttachResponse>, Status> {
        let valid_until = Some(Timestamp {
            seconds: Utc::now().timestamp() + 60,
            nanos: 0,
        });

        let reply = AttachResponse {
            status: AttachStatus::AttachSuccess as i32,
            user_code: "ABCDEF".to_string(),
            valid_until,
        };
        println!("Received attach request, responded with user_code: {}", reply.user_code); 
        Ok(Response::new(reply))
    }

    type WatchAuthenticationStream =
        Pin<Box<dyn Stream<Item = Result<WatchAuthenticationResponse, Status>> + Send>>;

    // Simulate two authentication status messages, with delays inbetween
    async fn watch_authentication(
        &self,
        request: Request<WatchAuthenticationRequest>,
    ) -> Result<Response<Self::WatchAuthenticationStream>, Status> {
        let (tx, rx) = mpsc::channel(5);
        let user_code = request.into_inner().user_code;
        println!("Received watch request for user_code: {}", user_code);

        tokio::spawn(async move {
            let statuses = vec![
                AuthenticationStatus::AuthenticationPending as i32,
                AuthenticationStatus::AuthenticationSuccess as i32,
            ];

            for s in statuses {
                sleep(Duration::from_secs(5)).await;
                let _ = tx
                    .send(Ok(WatchAuthenticationResponse {
                        status: s,
                        autoinstall: "example-autoinstall".to_string(),
                    }))
                    .await;
                sleep(std::time::Duration::from_secs(5)).await;
            }
        });

        let output_stream = ReceiverStream::new(rx);

        Ok(Response::new(
            Box::pin(output_stream) as Self::WatchAuthenticationStream
        ))
    }
}

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let addr = "[::1]:50051".parse().unwrap();
    let service = LandscapeService::default();

    println!("LandscapeInstallerAttachServer listening on {}", addr);

    Server::builder()
        .add_service(LandscapeInstallerAttachServer::new(service))
        .serve(addr)
        .await?;

    Ok(())
}
