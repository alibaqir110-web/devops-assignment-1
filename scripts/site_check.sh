#!/bin/bash
URL="http://localhost"
CODE=$(curl -s -o /dev/null -w "%{http_code}" "$URL")

if [ "$CODE" = "200" ]; then
    echo "$(date '+%Y-%m-%d %H:%M:%S') OK"
else
    echo "$(date '+%Y-%m-%d %H:%M:%S') FAIL: HTTP code $CODE"
    exit 1
fi

