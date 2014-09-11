#!/bin/bash

set -ue

cfg="/tmp/cloud-config.yaml"

curl https://raw.githubusercontent.com/ahri/homeserver/master/cloud-config.yaml > "$cfg"
curl https://raw.githubusercontent.com/coreos/init/master/bin/coreos-install | \
    bash -s -- -c "$cfg" "$@"
