#!/usr/bin/env bash
# Copyright (C) 2016 The Qt Company Ltd.
# SPDX-License-Identifier: LicenseRef-Qt-Commercial OR LGPL-3.0-only OR GPL-2.0-only OR GPL-3.0-only

# This script installs CMake

# CMake is needed for autotests that verify that Qt can be built with CMake

# shellcheck source=../unix/InstallFromCompressedFileFromURL.sh
source "${BASH_SOURCE%/*}/../unix/InstallFromCompressedFileFromURL.sh"
# shellcheck source=../unix/SetEnvVar.sh
source "${BASH_SOURCE%/*}/../unix/SetEnvVar.sh"

majorminorversion="3.24"
version="3.24.2"
PrimaryUrl="http://ci-files01-hki.intra.qt.io/input/cmake/cmake-$version-linux-x86_64.tar.gz"
AltUrl="https://cmake.org/files/v$majorminorversion/cmake-$version-linux-x86_64.tar.gz"
SHA1="12627c808674ee5f5bd3a6982176613bbd3ad9db"
targetFolder="/opt/cmake-$version"
appPrefix="cmake-$version-linux-x86_64"

InstallFromCompressedFileFromURL "$PrimaryUrl" "$AltUrl" "$SHA1" "$targetFolder" "$appPrefix"

SetEnvVar "PATH" "$targetFolder/bin:\$PATH"

echo "CMake = $version" >> ~/versions.txt

