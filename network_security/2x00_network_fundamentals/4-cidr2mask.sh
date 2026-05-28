#!/bin/bash
python3 -c "import ipaddress; print(ipaddress.IPv4Network('0.0.0.0/$1').netmask)"
