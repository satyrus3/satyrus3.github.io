#!/usr/bin/env bash
if [ -d "../Satyrus3-docs/docs/build/html" ]
then
    rm -rf "./docs/v$1"
    mkdir "./docs/v$1"
    mkdir "./docs/v$1"
    cp -r ../Satyrus3-docs/docs/build/html/* "./docs/v$1"
    exit 0
else
    exit 1
fi