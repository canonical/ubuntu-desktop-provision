#!/bin/bash

# Commit hash of the subiquity submodule in the source tree from which ubuntu-bootstrap is built
SUBIQUITY_COMMIT=$(git cat-file -p $(yq -r '.parts["ubuntu-bootstrap"]["source-commit"]' snap/snapcraft.yaml):packages/subiquity_client | awk '$4 == "subiquity" {print $3}')

has_mismatch=false
for part in curtin probert; do
    # Commit hash of the respective part in the subiquity's snapcraft.yaml
    part_commit=$(curl -sL https://github.com/canonical/subiquity/raw/$SUBIQUITY_COMMIT/snapcraft.yaml | yq -r ".parts[\"$part\"][\"source-commit\"]")

    # Commit hash of the respective part in the local snapcraft.yaml
    local_commit=$(yq -r ".parts[\"$part\"][\"source-commit\"]" snap/snapcraft.yaml)

    if [ "$part_commit" != "$local_commit" ]; then
        echo "Commit mismatch for $part: $part_commit (upstream) != $local_commit (local)"
        has_mismatch=true
    fi
done

if [ "$has_mismatch" = true ]; then
    echo "Commit mismatch detected. Please update the dependency commit hashes in snap/snapcraft.yaml"
    exit 1
else
    echo "Dependency check passed."
fi
