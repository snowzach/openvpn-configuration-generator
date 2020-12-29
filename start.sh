#!/bin/bash
docker build -t snowzach/openvpn-configuration-generator:latest .
echo "https://www.sparklabs.com/support/kb/article/creating-certificates-and-keys-for-your-openvpn-server/"
echo "cd /config"
docker run -it -v /data/docker/openvpn-configuration-generator/config:/config snowzach/openvpn-configuration-generator:latest bash

