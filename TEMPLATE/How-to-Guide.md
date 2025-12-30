# Complete Guide: Building System Theme Package

## Directory Structure

```
my-custom-theme/
├── PKGBUILD
├── my-custom-theme.install
├── icons.tar.gz (or icons/ folder)
├── themes.tar.gz (or themes/ folder)
├── lightdm-custom.conf
└── myapp.desktop
```

## Step 1: Prepare Your Files

### Icons Structure
```
icons/
└── MyIconTheme/
    ├── index.theme
    ├── 16x16/
    ├── 22x22/
    ├── 32x32/
    └── scalable/
```

### Themes Structure
```
themes/
└── MyGtkTheme/
    ├── index.theme
    ├── gtk-3.0/
    │   └── gtk.css
    └── gtk-4.0/
        └── gtk.css
```

### Compress if using tar.gz
```bash
tar -czf icons.tar.gz icons/
tar -czf themes.tar.gz themes/
```

## Step 2: Create LightDM Config

**File: `lightdm-custom.conf`**
```ini
[Seat:*]
greeter-session=lightdm-gtk-greeter

[greeter]
theme-name=MyGtkTheme
icon-theme-name=MyIconTheme
background=/usr/share/backgrounds/my-wallpaper.jpg
```

## Step 3: Create Desktop File

**File: `myapp.desktop`**
```desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=My Custom App
Comment=Launch my application
Exec=/usr/bin/myapp
Icon=myapp-icon
Terminal=false
Categories=Utility;
```

## Step 4: Modify PKGBUILD

1. **Update package info:**
```bash
pkgname=my-custom-theme
pkgver=1.0.0
pkgdesc="Your description here"
```

2. **Add to PKGBUILD if using .install file:**
```bash
install=$pkgname.install
```

3. **Choose source method:**

**Method A: Local files**
```bash
source=(
    "icons.tar.gz"
    "themes.tar.gz"
    "lightdm-custom.conf"
    "myapp.desktop"
)
```

**Method B: From folders (no tar.gz)**
```bash
source=()  # Leave empty for local folders

package() {
    # Copy folders directly
    cp -r "$srcdir/../icons/MyIconTheme" "$pkgdir/usr/share/icons/"
    cp -r "$srcdir/../themes/MyGtkTheme" "$pkgdir/usr/share/themes/"
}
```

**Method C: From GitHub**
```bash
source=(
    "$pkgname-$pkgver.tar.gz::https://github.com/user/repo/archive/v$pkgver.tar.gz"
)
```

## Step 5: Build Package

```bash
# Generate checksums
makepkg -g >> PKGBUILD

# Build package
makepkg -si

# Or just build without install
makepkg

# Clean build
makepkg -C
```

## Step 6: Add to Your Repository

```bash
# Copy package to your repo
cp my-custom-theme-1.0.0-1-any.pkg.tar.zst ~/arafsk_repo/x86_64/

# Update repository database
cd ~/arafsk_repo/x86_64/
repo-add arafsk_repo.db.tar.gz my-custom-theme-1.0.0-1-any.pkg.tar.zst

# Push to GitHub
git add .
git commit -m "Add my-custom-theme package"
git push
```

## Step 7: Install from Your Repo

```bash
sudo pacman -Sy
sudo pacman -S my-custom-theme
```

---

## Quick Reference: Common package() Commands

```bash
# Install directory with permissions
install -dm755 "$pkgdir/path/to/dir"

# Install file with permissions
install -Dm644 "source.file" "$pkgdir/path/to/destination"  # 644 = rw-r--r--
install -Dm755 "source.file" "$pkgdir/path/to/destination"  # 755 = rwxr-xr-x

# Copy directory recursively
cp -r "source_dir" "$pkgdir/destination/"

# Extract archive
tar -xzf "archive.tar.gz" -C "$pkgdir/destination/"
```

## Tips

1. **Test locally first:**
   ```bash
   makepkg -si
   ```

2. **Check installed files:**
   ```bash
   pacman -Ql my-custom-theme
   ```

3. **Generate .SRCINFO for AUR:**
   ```bash
   makepkg --printsrcinfo > .SRCINFO
   ```

4. **Update version:**
   - Change `pkgver` and/or `pkgrel`
   - Rebuild: `makepkg -f`
   - Update checksums: `updpkgsums` (if you have `pacman-contrib`)

5. **Dependencies:**
   - Add runtime deps to `depends=()`
   - Add build deps to `makedepends=()`
   - Add optional deps to `optdepends=()`

---

## Example: Real Package for XFCE Theme

```bash
pkgname=arafos-xfce-theme
pkgver=1.0.0
pkgrel=1
pkgdesc="ArafOS Custom XFCE Theme Pack"
arch=('any')
depends=('gtk3' 'xfce4-settings')
optdepends=('lightdm-gtk-greeter: for LightDM theming')
install=$pkgname.install

package() {
    # Icons
    install -dm755 "$pkgdir/usr/share/icons"
    cp -r "$srcdir/../icons/ArafOS-Icons" "$pkgdir/usr/share/icons/"
    
    # Themes
    install -dm755 "$pkgdir/usr/share/themes"
    cp -r "$srcdir/../themes/ArafOS-Dark" "$pkgdir/usr/share/themes/"
    
    # Wallpapers
    install -dm755 "$pkgdir/usr/share/backgrounds"
    install -Dm644 "wallpaper.jpg" "$pkgdir/usr/share/backgrounds/arafos-wallpaper.jpg"
    
    # LightDM
    install -dm755 "$pkgdir/etc/lightdm/lightdm-gtk-greeter.conf.d"
    install -Dm644 "lightdm.conf" "$pkgdir/etc/lightdm/lightdm-gtk-greeter.conf.d/arafos.conf"
    
    # Desktop files
    install -dm755 "$pkgdir/etc/skel/.config/autostart"
    install -Dm644 "welcome.desktop" "$pkgdir/etc/skel/Desktop/welcome.desktop"
}
```