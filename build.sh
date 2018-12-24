#!/bin/bash
# Copy files to build/, builds css file, and zips
rm -rf build && mkdir -p build && cp README.md LICENSE.md manifest.json 128.png 48.png 32.png 16.png build/ && sass style.scss build/style.css --style=compressed --sourcemap=none && zip -r build/outlook-dark-mode.zip build/ && echo "BUILD SUCCESSFUL"