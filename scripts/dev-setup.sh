#!/usr/bin/env bash

set -euo pipefail

sudo apt-get update && sudo apt-get install -y unzip xz-utils

export PUB_CACHE="/home/user/host-cache/flutter/.pub-cache"
export FLUTTER_SDK="/home/user/host-cache/flutter/flutter-sdk"
export PATH="$PATH:$FLUTTER_SDK/bin"

if [ ! -d "$FLUTTER_SDK" ]; then
    git clone https://github.com/flutter/flutter.git -b stable --depth 1 "$FLUTTER_SDK"
    flutter
fi
