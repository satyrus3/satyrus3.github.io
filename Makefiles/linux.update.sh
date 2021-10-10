#!/usr/bin/env bash
if [ -d ".../Satyrus3-docs/docs/build/html" ]
then
    rm -rf ../docs
    mkdir ../docs
    cp -r .../Satyrus3-docs/docs/build/html/* ../docs
    exit 0
else
    exit 1
fi