#! /usr/bin/env bash 

set -euxo pipefail

snap_name=$1

if [[ $snap_name != "init" && $snap_name != "bootstrap" ]]; then
    echo "Expected argument to be 'init' or 'bootstrap'"
    exit 1
fi

snapcraft_artifacts_path="ci/snap/${snap_name}"

cp -r "${snapcraft_artifacts_path}" ./snap

# inside subiquity client 