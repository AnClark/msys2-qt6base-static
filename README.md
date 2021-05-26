# PKGBUILD for Qt6 Base Static Version on Msys2

Here's the Msys2 PKGBUILD for Qt6 Base, statically-linked version. Initially this is for compiling [Rui Nuno Capela](https://github.com/rncbc)'s [Vee One Suite](https://www.rncbc.org/drupal/node/2226) on my computer.

A static version of Qt6 can make your applications more portable, without copying a bundle of Qt6 libraries. By default Qt6 static version is also unavailable on Msys2, you need to build it from scratch as well.

Now, this PKGBUILD will help you out. It generates a Pacman package, just make it portable and manageable. 

## Prerequisites

You need to install those packages to build Qt6:

```bash
pacman -S mingw-w64-x86_64-gcc mingw-w64-x86_64-cmake mingw-w64-x86_64-ninja
```

## Usage

1. Run Msys2 **MinGW64 shell**. 

   **DO NOT USE MSYS SHELL!** It uses Msys's POSIX-compatible compilers, which are incompatible with native Win32 environment.

2. Clone this repo. Make sure that you won't put other files in `PKGBUILD`'s directory.

```bash
git clone https://github.com/AnClark/msys2-qt6base-static ~/msys2-qt6base-static
```

3. Build package.

```bash
cd ~/msys2-qt6base-static/
makepkg -f
```

When done, you'll get a package file: ```mingw-w64-x86_64-qtbase6-static-6.1.0-x86_64.pkg.tar.zst```.

4. Install package.

```bash
pacman -U mingw-w64-x86_64-qtbase6-static-6.1.0-x86_64.pkg.tar.zst
```

Finally, Qt6 base static library will be installed into `/opt/qtbase6-static`.

## Enable Qt6 statically-linking for CMake

There's also an initialization script within this package. If your project uses CMake, you can invoke it before configuring with CMake:

```bash
source /opt/qtbase6-static/6.1.0/bin/qtbase6-static-env.sh
```

Including this script will configure some necessary environment variables to let CMake choose static version of Qt6 library.

## Authors

- Original author: [Rui Nuno Capela (rncbc)](https://github.com/rncbc)
- Maintainer: [AnClark](https://github.com/AnClark)