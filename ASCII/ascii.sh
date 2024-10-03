#!/bin/bash
# man ascii
for i in {0..127}; do
	printf "%3d: %b\n" $i "$(printf "\\$(printf '%03o' $i)")";
done
