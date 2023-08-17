#!/bin/bash -e
################################################################################
##  File:  install-docker-compose.sh
##  Desc:  Install Docker Compose v1
##  Supply chain security: Docker Compose v1 - checksum validation
################################################################################

# Install docker-compose v1 from releases
if [[ $(arch) == "aarch64" ]]; then
    sudo apt-get install -y docker-compose --no-install-recommends
else
    URL="https://github.com/docker/compose/releases/download/1.29.2/docker-compose-Linux-x86_64"
    curl -fsSL "${URL}" -o /tmp/docker-compose-v1

    # Supply chain security - Docker Compose v1
    external_hash="f3f10cf3dbb8107e9ba2ea5f23c1d2159ff7321d16f0a23051d68d8e2547b323"
    use_checksum_comparison "/tmp/docker-compose-v1" "${external_hash}"
    install /tmp/docker-compose-v1 /usr/local/bin/docker-compose
fi

invoke_tests "Tools" "Docker-compose v1"
