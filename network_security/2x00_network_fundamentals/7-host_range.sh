#!/bin/bash
IFS='.' read -r i1 i2 i3 i4 <<< "$1"; mask=$(( 0xFFFFFFFF << (32-$2) & 0xFFFFFFFF )); IFS='.' read -r m1 m2 m3 m4 <<< "$(printf '%d.%d.%d.%d' $(((mask>>24)&255)) $(((mask>>16)&255)) $(((mask>>8)&255)) $((mask&255)))"
printf '%d.%d.%d.%d - %d.%d.%d.%d' $(((i1&m1))) $(((i2&m2))) $(((i3&m3))) $(((i4&m4)+1)) $(((i1&m1)|(255&~m1))) $(((i2&m2)|(255&~m2))) $(((i3&m3)|(255&~m3))) $(((i4&m4)|(255&~m4)-1))
