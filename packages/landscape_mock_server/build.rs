use std::env;

fn main() -> Result<(), Box<dyn std::error::Error>> {
    let current_dir = env::current_dir()?;

    println!("Current directory: {:?}", current_dir);

    std::fs::create_dir_all("./src/protos")?;

    let files = &["../landscape_client/protos/landscape_installer_attach.proto"];
    let include_dirs = &["../landscape_client/protos"];

    tonic_build::configure()
        .build_server(true)
        .build_client(true)
        .out_dir("./src/protos")
        .compile_protos(files, include_dirs)?;

    Ok(())
}
