#!/bin/bash
IFS='.' read -r o1 o2 o3 o4 <<< "$1"
for octet in "$o1" "$o2" "$o3" "$o4"; do
    printf '%08d' "$(echo "ibase=10; obase=2; $octet" | bc)"
    [[ "$octet" != "$o4" ]] && printf '.'
done
printf '\n'
