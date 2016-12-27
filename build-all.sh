#!/bin/bash
source android/build.sh

export WEBRTC_DEBUG=true

export WEBRTC_ARCH=armv7
prepare_gyp_defines && execute_build
export WEBRTC_ARCH=armv8
prepare_gyp_defines && execute_build
export WEBRTC_ARCH=x86
prepare_gyp_defines && execute_build
export WEBRTC_ARCH=x86_64
prepare_gyp_defines && execute_build

export WEBRTC_DEBUG=false

export WEBRTC_ARCH=armv7
prepare_gyp_defines && execute_build
export WEBRTC_ARCH=armv8
prepare_gyp_defines && execute_build
export WEBRTC_ARCH=x86
prepare_gyp_defines && execute_build
export WEBRTC_ARCH=x86_64
prepare_gyp_defines && execute_build
