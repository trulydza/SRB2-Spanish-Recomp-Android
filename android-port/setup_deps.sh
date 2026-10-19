#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
JNI_DIR="${SCRIPT_DIR}/app/src/main/jni"

echo "========================================"
echo " SRB2 Android Port - Descarga de dependencias"
echo "========================================"

# 1. SDL2
if [ ! -f "${JNI_DIR}/SDL2/CMakeLists.txt" ]; then
    echo "[1/4] Clonando SDL2 (release-2.28.5)..."
    git clone --branch release-2.28.5 --depth 1 https://github.com/libsdl-org/SDL.git "${JNI_DIR}/SDL2"
else
    echo "[1/4] SDL2 ya presente, omitiendo."
fi

# 2. SDL2_mixer
if [ ! -f "${JNI_DIR}/SDL2_mixer/CMakeLists.txt" ]; then
    echo "[2/4] Clonando SDL2_mixer (release-2.6.3)..."
    git clone --branch release-2.6.3 --depth 1 https://github.com/libsdl-org/SDL_mixer.git "${JNI_DIR}/SDL2_mixer"
else
    echo "[2/4] SDL2_mixer ya presente, omitiendo."
fi

# 3. curl
if [ ! -f "${JNI_DIR}/curl/CMakeLists.txt" ]; then
    echo "[3/4] Clonando curl (curl-8_5_0)..."
    git clone --branch curl-8_5_0 --depth 1 https://github.com/curl/curl.git "${JNI_DIR}/curl"
else
    echo "[3/4] curl ya presente, omitiendo."
fi

# 4. mbedTLS
if [ ! -f "${JNI_DIR}/mbedtls/CMakeLists.txt" ]; then
    echo "[4/4] Clonando mbedTLS (v3.5.1)..."
    git clone --branch v3.5.1 --depth 1 https://github.com/Mbed-TLS/mbedtls.git "${JNI_DIR}/mbedtls"
else
    echo "[4/4] mbedTLS ya presente, omitiendo."
fi

echo "Todas las dependencias clonadas con éxito."
