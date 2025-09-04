#!/bin/bash

sudo apt-get update -qq

COUNT=$(apt list --upgradable 2>/dev/null | tail -n +2 | wc -l)

if [[ -z "$COUNT" ]]; then
    COUNT=0
fi

echo "$COUNT"
