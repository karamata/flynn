#!/bin/bash

URL="https://s3-us-west-2.amazonaws.com/grafana-releases/release/grafana-5.0.4.linux-x64.tar.gz"
SHA="4c8b94698b61d48d089d3027f3e322cc41201b848ac705ed7940b76191c3b775"

curl -fsSLo /tmp/grafana.tar.gz "${URL}"
echo "${SHA}  /tmp/grafana.tar.gz" | shasum -a 256 -c -
mkdir -p /var/lib/grafana
tar xzf /tmp/grafana.tar.gz --strip-components=1 -C /var/lib/grafana
