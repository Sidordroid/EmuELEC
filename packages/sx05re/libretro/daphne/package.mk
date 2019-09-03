# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2019-present Shanti Gilbert (https://github.com/shantigilbert)

PKG_NAME="daphne"
PKG_VERSION="c1f7d09c8b3a9bf17b28bd5a123635fb6784f8ba"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPLv2+"
PKG_SITE="https://github.com/libretro/daphne"
PKG_URL="$PKG_SITE.git"
PKG_DEPENDS_TARGET="toolchain"
PKG_SHORTDESC="This is a Daphne core"
GET_HANDLER_SUPPORT="git"
PKG_TOOLCHAIN="make"

makeinstall_target() {
  mkdir -p $INSTALL/usr/lib/libretro
  cp daphne_libretro.so $INSTALL/usr/lib/libretro/
}

