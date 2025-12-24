#!/bin/bash

PKGBUILD="PKGBUILD"

# Get current year and month
YEAR=$(date +%y)
MONTH=$(date +%m)

# Compose new version
NEW_VER="${YEAR}.${MONTH}"

# Extract current pkgver and pkgrel
OLD_VER=$(grep ^pkgver= "$PKGBUILD" | cut -d= -f2)
OLD_REL=$(grep ^pkgrel= "$PKGBUILD" | cut -d= -f2)

# Decide on new pkgrel
if [[ "$NEW_VER" == "$OLD_VER" ]]; then
  NEW_REL=$(printf "%02d" $((10#$OLD_REL + 1)))
else
  NEW_REL="01"
fi

# Update PKGBUILD
sed -i "s/^pkgver=.*/pkgver=${NEW_VER}/" "$PKGBUILD"
sed -i "s/^pkgrel=.*/pkgrel=${NEW_REL}/" "$PKGBUILD"

echo "Updated PKGBUILD: pkgver=${NEW_VER}, pkgrel=${NEW_REL}"


# CONFIGURATION
CHROOT="$HOME/Documents/chroot-archlinux"
DEST_DIR="/home/arafsk/DATA/github/arafsk/arafsk_repo/x86_64/"
CHOICE=2  # Default to makepkg
MAKEPKG_LIST=()  # Add package names here that should always use makepkg

# GET DIRECTORY INFORMATION
PWD_PATH=$(pwd)
PKG_NAME=$(basename "$PWD_PATH")

# Override CHOICE if current package is in MAKEPKG_LIST
for pkg in "${MAKEPKG_LIST[@]}"; do
  if [[ "$PKG_NAME" == "$pkg" ]]; then
    CHOICE=2
    break
  fi
done

# SETUP TEMP BUILD DIRECTORY
TMP_BUILD="/tmp/tempbuild"
rm -rf "$TMP_BUILD"
mkdir -p "$TMP_BUILD"
cp -r "$PWD_PATH"/* "$TMP_BUILD/"

# MOVE TO TEMP BUILD
cd "$TMP_BUILD" || exit 1

# BUILD PROCESS
if [[ "$CHOICE" == "1" ]]; then
  tput setaf 2
  echo "#############################################################################################"
  echo "### Building in chroot: $CHROOT"
  echo "#############################################################################################"
  tput sgr0

  # Ensure chroot exists
  if [[ ! -d "$CHROOT/root" ]]; then
    echo "Chroot not found at $CHROOT. Exiting."
    exit 1
  fi

  arch-nspawn "$CHROOT/root" pacman -Syu --noconfirm
  makechrootpkg -c -r "$CHROOT"

else
  tput setaf 3
  echo "#############################################################################################"
  echo "### Building with makepkg: $PKG_NAME"
  echo "#############################################################################################"
  tput sgr0

  makepkg --noconfirm
fi

# MOVE BUILT PACKAGE TO DESTINATION
tput setaf 6
echo "Moving built packages to $DEST_DIR"
echo "#############################################################################################"
mv -n "$PKG_NAME"*pkg.tar.zst "$DEST_DIR"
tput sgr0

# CLEANUP
tput setaf 6
echo "Cleaning up leftover files"
echo "#############################################################################################"

rm -f "$PWD_PATH"/*.log "$PWD_PATH"/*.deb "$PWD_PATH"/*.tar.gz

tput setaf 11
echo "#############################################################################################"
echo "#############################         Build complete         ###############################"
echo "#############################################################################################"
tput sgr0