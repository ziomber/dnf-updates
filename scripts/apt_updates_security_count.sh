#!/bin/bash

COUNT=$(apt list --upgradable  2>/dev/null | grep security | wc -l)

if [[ -z "$COUNT" ]]; then
    COUNT=0
fi

echo "$COUNT"
