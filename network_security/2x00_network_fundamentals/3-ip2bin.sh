#!/bin/bash
IFS='.' read -r o1 o2 o3 o4 <<< "$1"
printf '%08d.%08d.%08d.%08d\n' $(echo "ibase=10;obase=2;$o1" | bc) $(echo "ibase=10;obase=2;$o2" | bc) $(echo "ibase=10;obase=2;$o3" | bc) $(echo "ibase=10;obase=2;$o4" | bc)
