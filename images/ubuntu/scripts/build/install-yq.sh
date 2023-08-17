#!/bin/bash -e
################################################################################
##  File:  install-yq.sh
##  Desc:  Install YQ
##  Supply chain security: YQ - checksum validation
################################################################################

# Source the helpers for use with the script
source $HELPER_SCRIPTS/install.sh

YQ_URL="https://github.com/mikefarah/yq/releases/latest/download/yq_linux_$ARCH"
download_with_retries "$YQ_URL" "/usr/bin" "yq"
chmod +x /usr/bin/yq

invoke_tests "Tools" "yq"
