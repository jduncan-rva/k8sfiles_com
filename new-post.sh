#! /usr/bin/env bash

ARTICLE=$1

echo "Creating new episode show notes article - $1."
hugo new episode/$1.md
echo "Creating directory for images."
mkdir -p static/images/$1
echo "Done. Happy writing."