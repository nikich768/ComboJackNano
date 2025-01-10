#!/bin/bash
cd `dirname $0`

rm -f ../Installer/ComboJackMini 2> /dev/null
xcodebuild -configuration Release || exit 1
cp -f build/Release/ComboJackMini ../Installer/
rm -rf ./build
rm -rf ./ComboJackMini--RELEASE.zip