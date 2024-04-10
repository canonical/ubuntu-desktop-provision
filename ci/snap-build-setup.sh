#! /usr/bin/env bash 

set -euxo pipefail

snap_name=$1

if [[ $snap_name != "init" && $snap_name != "bootstrap" && $snap_name != "reset-tools" ]]; then
    echo "Expected argument to be 'init', 'bootstrap' or 'reset-tools', but got '$snap_name'"
    exit 1
fi

snapcraft_artifacts_path="ci/snap/${snap_name}"

cp -r "${snapcraft_artifacts_path}" ./snap
