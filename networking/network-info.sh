#!/bin/bash

set -e
 
echo "Hostname"
hostname

echo "=============="

echo "IP address"
hostname -I

echo "=============="

echo "Default gateway"
ip route | grep default

echo "=============="


echo "Open Ports:"
ss -tunlp
