#!/bin/bash

COUNT=$(dnf -q list updates 2>/dev/null | tail -n +2 | wc -l)

if [[ -z "$COUNT" ]]; then
    COUNT=0
fi

echo "$COUNT"
