#!/bin/bash

COUNT=$(dnf -q check-update --security 2>/dev/null | wc -l)

if [[ -z "$COUNT" ]]; then
    COUNT=0
fi

echo "$COUNT"
