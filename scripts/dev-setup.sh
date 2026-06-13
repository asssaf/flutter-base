#!/usr/bin/env bash

set -euo pipefail

sudo apt-get update && sudo apt-get install -y unzip xz-utils

if [ ! -d "/home/user/flutter-sdk" ]; then
    git clone https://github.com/flutter/flutter.git -b stable --depth 1 /home/user/flutter-sdk
fi
