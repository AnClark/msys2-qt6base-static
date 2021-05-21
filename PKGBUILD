# Original Author: rncbc aka. Rui Nuno Capela <rncbc@rncbc.org>
# Maintainer: AnClark Liu <clarklaw4701@gmail.com>

pkgbase=qtbase
pkgname=mingw-w64-x86_64-${pkgbase}6-static
pkgnamesimple=${pkgbase}6-static
pkgver=6.1.0
pkgext=
pkgrel=1
pkgdesc='Qt 6 base modules - static libraries'
arch=('x86_64')
url='https://www.qt.io'
license=('GPL3' 'LGPL3')
depends=()
makedepends=('mingw-w64-x86_64-gcc' 'mingw-w64-x86_64-cmake' 'mingw-w64-x86_64-ninja')
conflicts=()
groups=('qt' 'qt6')
source=("https://download.qt.io/official_releases/qt/${pkgver%.*}/${pkgver}/submodules/${pkgbase}-everywhere-src-${pkgver}${pkgext}.tar.xz" 
"${pkgnamesimple}-env.sh")
sha512sums=('SKIP' 'SKIP')

build() {
  cd ${pkgbase}-everywhere-src-${pkgver}${pkgext}
  ./configure.bat -static -release \
   -prefix C:/opt/${pkgnamesimple}/${pkgver}${pkgext} \
   -opensource -confirm-license \
   -platform win32-g++ \
   -opengl desktop \
   -qt-doubleconversion \
   -qt-pcre \
   -qt-sqlite \
   -no-icu \
   -no-cups \
   -no-directfb \
   -no-eglfs \
   -no-evdev \
   -no-eventfd \
   -no-journald \
   -no-glib \
   -no-gtk \
   -no-inotify \
   -no-libinput \
   -no-libproxy \
   -no-mtdev \
   -no-openssl \
   -no-pch \
   -no-sctp \
   -no-securetransport \
   -no-syslog \
   -no-tslib \
   -qt-freetype \
   -no-fontconfig \
   -qt-harfbuzz \
   -qt-libjpeg \
   -qt-libpng \
   -no-gif \
   -no-ico \
   -make libs \
   -make tools \
   -nomake examples \
   -nomake tests
  cmake --build . --parallel
}

package() {
  cd ${pkgbase}-everywhere-src-${pkgver}${pkgext}
  DESTDIR="${pkgdir}" \
  cmake --install .
  install -m 0755 ${srcdir}/${pkgnamesimple}-env.sh ${pkgdir}/opt/${pkgnamesimple}/${pkgver}${pkgext}/bin
}
