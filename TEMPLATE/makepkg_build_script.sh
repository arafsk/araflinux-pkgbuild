#!/bin/bash

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Build base directory
BUILD_BASE="$HOME/Documents/pkgbuild"

# Save original directory
ORIGINAL_DIR=$(pwd)

echo -e "${BLUE}╔════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║     PKGBUILD Builder Script            ║${NC}"
echo -e "${BLUE}╔════════════════════════════════════════╗${NC}"
echo ""

# Prompt for PKGBUILD file
echo -e "${YELLOW}Please drag and drop your PKGBUILD file here and press Enter:${NC}"
read -r PKGBUILD_PATH

# Remove quotes if present (from drag & drop)
PKGBUILD_PATH=$(echo "$PKGBUILD_PATH" | sed "s/^['\"]//;s/['\"]$//")

# Verify PKGBUILD exists
if [ ! -f "$PKGBUILD_PATH" ]; then
    echo -e "${RED}Error: PKGBUILD file not found at: $PKGBUILD_PATH${NC}"
    exit 1
fi

# Get PKGBUILD directory
PKGBUILD_DIR=$(dirname "$PKGBUILD_PATH")

# Extract pkgname and pkgver from PKGBUILD
echo -e "${BLUE}Extracting package information...${NC}"
cd "$PKGBUILD_DIR" || exit 1

# Source PKGBUILD to get variables
source "$PKGBUILD_PATH"

if [ -z "$pkgname" ] || [ -z "$pkgver" ]; then
    echo -e "${RED}Error: Could not extract pkgname or pkgver from PKGBUILD${NC}"
    exit 1
fi

echo -e "${GREEN}Package: $pkgname${NC}"
echo -e "${GREEN}Version: $pkgver${NC}"
echo ""

# Create build directory name
BUILD_DIR="$BUILD_BASE/$pkgname-$pkgver"

# Check if old build directory exists
if [ -d "$BUILD_DIR" ]; then
    echo -e "${YELLOW}Old build directory found: $BUILD_DIR${NC}"
    echo -e "${YELLOW}Cleaning old build...${NC}"
    rm -rf "$BUILD_DIR"
    echo -e "${GREEN}Old build cleaned.${NC}"
    echo ""
fi

# Create fresh build directory
echo -e "${BLUE}Creating build directory: $BUILD_DIR${NC}"
mkdir -p "$BUILD_DIR"

# Copy entire PKGBUILD directory to build location
echo -e "${BLUE}Copying files to build directory...${NC}"
cp -rv "$PKGBUILD_DIR"/* "$BUILD_DIR/"

# Change to build directory
cd "$BUILD_DIR" || exit 1

echo -e "${BLUE}Starting build with: makepkg -f -scr --noconfirm${NC}"
echo ""
echo -e "${YELLOW}═══════════════════════════════════════════════════${NC}"

# Run makepkg
if makepkg -f -scr --noconfirm; then
    echo -e "${YELLOW}═══════════════════════════════════════════════════${NC}"
    echo ""
    echo -e "${GREEN}✓ Build completed successfully!${NC}"
    echo ""
    
    # Move package files to original directory
    echo -e "${BLUE}Moving package files to: $ORIGINAL_DIR${NC}"
    mv *.pkg.tar.zst "$ORIGINAL_DIR/" 2>/dev/null
    mv *.pkg.tar.zst.sig "$ORIGINAL_DIR/" 2>/dev/null
    
    echo -e "${GREEN}✓ Package files moved successfully!${NC}"
    echo ""
    
    # Clean up src and pkg directories
    echo -e "${BLUE}Cleaning up build artifacts...${NC}"
    rm -rf src/
    rm -rf pkg/
    
    echo -e "${GREEN}✓ Build artifacts cleaned!${NC}"
    echo ""
    echo -e "${GREEN}════════════════════════════════════════${NC}"
    echo -e "${GREEN}Build Complete!${NC}"
    echo -e "${GREEN}Package files are in: $ORIGINAL_DIR${NC}"
    echo -e "${GREEN}════════════════════════════════════════${NC}"
else
    echo -e "${YELLOW}═══════════════════════════════════════════════════${NC}"
    echo ""
    echo -e "${RED}✗ Build failed!${NC}"
    echo -e "${YELLOW}Build directory preserved for debugging:${NC}"
    echo -e "${YELLOW}$BUILD_DIR${NC}"
    echo ""
    echo -e "${YELLOW}To retry, run the command again with the same PKGBUILD${NC}"
    exit 1
fi

# Change to build directory
#cd "$ORIGINAL_DIR" || exit 1
