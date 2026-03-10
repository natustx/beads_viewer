#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
git pull
go build -o bv ./cmd/bv
mkdir -p ~/prj/util/bin
rm -f ~/prj/util/bin/bv
cp bv ~/prj/util/bin/
echo "Installed: $(~/prj/util/bin/bv --version)"
