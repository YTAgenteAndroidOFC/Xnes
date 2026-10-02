#!/usr/bin/env bash
# Baixa o core snes9x (libretro, arm64) e coloca no projeto com o nome que o Android exige (lib*.so)
set -e
DEST="app/src/main/jniLibs/arm64-v8a"
URL="https://buildbot.libretro.com/nightly/android/latest/arm64-v8a/snes9x_libretro_android.so.zip"
mkdir -p "$DEST"
TMP="$(mktemp -d)"
curl -L "$URL" -o "$TMP/core.zip"
unzip -o "$TMP/core.zip" -d "$TMP"
mv "$TMP/snes9x_libretro_android.so" "$DEST/libsnes9x_libretro_android.so"
rm -rf "$TMP"
echo "Core instalado em $DEST"
