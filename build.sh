#!/bin/bash
source android/build.sh

while true; do
    read -p "[R]elease or [D]ebug build ? " rd
    case $rd in
        [Rr]) export WEBRTC_DEBUG=false; break;;
        [Dd]) export WEBRTC_DEBUG=true; break;;
    esac
done

while true; do
    read -p "arm[v7], arm[v8], [x86], [x64]  ? " arch
    case $arch in
	"v7") export WEBRTC_ARCH=armv7; break;;
	"v8") export WEBRTC_ARCH=armv8; break;;
	"x86") export WEBRTC_ARCH=x86; break;;
	"x64") export WEBRTC_ARCH=x86_64; break;;
    esac
done

prepare_gyp_defines && execute_build
