#!/usr/bin/env bash
set -e
npm install
[ -d android ] || npx cap add android
mkdir -p android/app/src/main/java/com/examguard/app
cp native/MainActivity.java android/app/src/main/java/com/examguard/app/MainActivity.java
npx cap sync android
cd android && ./gradlew assembleDebug
echo "SELESAI -> android/app/build/outputs/apk/debug/app-debug.apk"
