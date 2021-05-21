#!/bin/bash
#
QT_BASE_DIR=/opt/qtbase6-static/6.1.0

export QTDIR=$QT_BASE_DIR
export PATH=$QT_BASE_DIR/bin:$PATH
export PKG_CONFIG_PATH=$QT_BASE_DIR/lib/pkgconfig:$PKG_CONFIG_PATH

