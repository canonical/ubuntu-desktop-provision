use std::{pin::Pin, time::Duration};

use chrono::Utc;
use clap::Parser;
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

#[derive(Parser)]
#[command(author, version, about)]
struct CliArgs {
    #[arg(long)]
    watch_error: bool,
    #[arg(long)]
    watch_unretriable_error: bool,
    #[arg(long)]
    attach_error: bool,
    #[arg(long)]
    watch_fail: bool,
    #[arg(long)]
    attach_fail: bool,
}

#[derive(Clone, Default)]
pub struct LandscapeService {
    watch_error: bool,
    watch_unretriable_error: bool,
    attach_error: bool,
    watch_fail: bool,
    attach_fail: bool,
}

impl LandscapeService {
    fn new(args: &CliArgs) -> Self {
        Self {
            watch_error: args.watch_error,
            watch_unretriable_error: args.watch_unretriable_error,
            attach_error: args.attach_error,
            watch_fail: args.watch_fail,
            attach_fail: args.attach_fail,
        }
    }
}

#[tonic::async_trait]
impl LandscapeInstallerAttach for LandscapeService {
    // Returns a mock user code and duration
    async fn attach(&self, _request: Request<()>) -> Result<Response<AttachResponse>, Status> {
        if self.attach_fail {
            return Err(Status::internal("Simulated attach failure"));
        }

        let valid_until = Some(Timestamp {
            seconds: Utc::now().timestamp() + 60,
            nanos: 0,
        });

        let status = if self.attach_error {
            println!("Simulated attach error");
            AttachStatus::ErrorNotEnabled as i32
        } else {
            println!("Simulated attach success");
            AttachStatus::AttachSuccess as i32
        };

        let reply = AttachResponse {
            status,
            user_code: "ABCDEF".to_string(),
            valid_until,
        };
        println!(
            "Received attach request, responded with user_code: {}",
            reply.user_code
        );
        Ok(Response::new(reply))
    }

    type WatchAuthenticationStream =
        Pin<Box<dyn Stream<Item = Result<WatchAuthenticationResponse, Status>> + Send>>;

    // Simulate two authentication status messages, with delays inbetween
    async fn watch_authentication(
        &self,
        request: Request<WatchAuthenticationRequest>,
    ) -> Result<Response<Self::WatchAuthenticationStream>, Status> {
        if self.watch_fail {
            println!("Simulated watch failure");
            return Err(Status::internal("Simulated watch failure"));
        }

        let (tx, rx) = mpsc::channel(5);
        let user_code = request.into_inner().user_code;
        println!("Received watch request for user_code: {}", user_code);

        let statuses = if self.watch_error {
            println!("Simulated watch error");
            vec![
                AuthenticationStatus::AuthenticationPending as i32,
                AuthenticationStatus::ErrorCodeNotFound as i32,
            ]
        } else if self.watch_unretriable_error {
            println!("Simulated watch unretriable error");
            vec![
                AuthenticationStatus::AuthenticationPending as i32,
                AuthenticationStatus::ErrorEmployeeDeactivated as i32,
            ]
        } else {
            println!("Simulated watch success");
            vec![
                AuthenticationStatus::AuthenticationPending as i32,
                AuthenticationStatus::AuthenticationSuccess as i32,
            ]
        };
        let yaml_content = r#"
        #cloud-config
        autoinstall:
            version: 1
            identity:
                hostname: hostname
                username: username
                password: $crypted_pass
        "#;
        tokio::spawn(async move {
            for s in statuses {
                sleep(Duration::from_secs(5)).await;
                let _ = tx
                    .send(Ok(WatchAuthenticationResponse {
                        status: s,
                        autoinstall: yaml_content.to_string(),
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
    let args = CliArgs::parse();
    let service = LandscapeService::new(&args);

    println!("LandscapeInstallerAttachServer listening on {}", addr);

    Server::builder()
        .add_service(LandscapeInstallerAttachServer::new(service))
        .serve(addr)
        .await?;

    Ok(())
}
