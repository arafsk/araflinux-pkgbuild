#!/bin/bash

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Save original directory
DEST_DIR="$HOME/Documents/Github/arafsk_repo/x86_64/"

echo -e "${BLUE}╔════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║     PKGBUILD Builder Script            ║${NC}"
echo -e "${BLUE}╔════════════════════════════════════════╗${NC}"
echo ""

pkgname=$(grep "^pkgname=" PKGBUILD | awk -F"=" '{print $2}')
pkgrel=$(grep "^pkgrel=" PKGBUILD | awk -F"=" '{split($2,a," ");gsub(/"/, "", a[1]);print a[1]}')
arch=$(grep "^arch=" PKGBUILD | awk -F"'" '{print $2}')

echo -e "${GREEN}Package: $pkgname${NC}"
echo -e "${GREEN}Version: $pkgver${NC}"
echo ""

#NEED ONLY TO EDIT  sourcefiles VARIABLE
sourcefiles="$pkgname/"
tar -zcvf $pkgname.tar.gz $sourcefiles

pkgver=$(grep "^pkgver=" PKGBUILD | awk -F"=" '{print $2}')
pkgfile=$pkgname-$pkgver-$pkgrel-$arch.pkg.tar.zst

echo -e "${BLUE}Starting build with: makepkg -f -scr --noconfirm${NC}"
echo ""
echo -e "${YELLOW}═══════════════════════════════════════════════════${NC}"

#sed -i -e '/^sha256/d' -e '/^sha512/d' PKGBUILD
updpkgsums
#makepkg -g >> PKGBUILD
if makepkg -f -scr --noconfirm; then
    echo -e "${YELLOW}═══════════════════════════════════════════════════${NC}"
    echo ""
    echo -e "${GREEN}✓ Build completed successfully!${NC}"
    echo ""

    # Move package files to original directory
    echo -e "${BLUE}Moving pkg files to: $DEST_DIR${NC}"
    mv *.pkg.tar.zst "$DEST_DIR" 2>/dev/null
    mv *.pkg.tar.zst.sig "$DEST_DIR" 2>/dev/null
    
    echo -e "${GREEN}✓ pkg files moved successfully!${NC}"
    echo ""

    # Clean up src and pkg directories
    echo -e "${BLUE}Cleaning up build artifacts...${NC}"
    rm -rf src/
    rm -rf pkg/
    rm -rf $pkgname.tar.gz
    
    echo -e "${GREEN}✓ Build artifacts cleaned!${NC}"
    echo ""
    echo -e "${GREEN}════════════════════════════════════════${NC}"
    echo -e "${GREEN}Build Completed!${NC}"
    echo -e "${GREEN}Package files are in: $DEST_DIR${NC}"
    echo -e "${GREEN}════════════════════════════════════════${NC}"
else
    echo -e "${YELLOW}═══════════════════════════════════════════════════${NC}"
    echo ""
    echo -e "${RED}✗ Build failed!${NC}"
    echo -e "${YELLOW}Build directory preserved for debugging:${NC}"
    echo -e "${YELLOW}$BUILD_DIR${NC}"
    echo ""
    echo -e "${YELLOW}Try again after debugging...${NC}"
    exit 1
fi
