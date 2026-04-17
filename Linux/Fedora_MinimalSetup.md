# Fedora Minimal Desktop Setup Guide

A guide to building a lightweight, productivity-focused Fedora Linux installation for coding, starting from a minimal base.
Made by Claude.ai. (Chat: 015a9574-8489-4759-8ba7-ece67feb3788).

---

## Installation Order

1. Base system (from minimal install)
2. Display server + Desktop Environment/Window Manager
3. Display manager (login screen)
4. NetworkManager & audio support
5. Terminal & development tools
6. Applications as needed

---

## 1. Display Server & Desktop Environment

Choose one option based on your preference:

### Option A: Xfce (Lightweight, Traditional)
```bash
sudo dnf install @xfce-desktop-environment
```
- **Package group:** `@xfce-desktop-environment`
- **Docs:** https://docs.fedoraproject.org/en-US/quick-docs/switching-desktop-environments/

### Option B: LXQt (Very Lightweight)
```bash
sudo dnf install @lxqt-desktop-environment
```
- **Package group:** `@lxqt-desktop-environment`

### Option C: i3 Window Manager (Most Minimal)
```bash
sudo dnf install i3 dmenu i3status
```
- **Packages:** `i3`, `dmenu`, `i3status`
- Tiling window manager for keyboard-driven workflow

---

## 2. Display Manager (Login Screen)

```bash
sudo dnf install lightdm lightdm-gtk
sudo systemctl enable lightdm
```
- **Packages:** `lightdm`, `lightdm-gtk`
- Lightweight login manager

---

## 3. Essential System Utilities

### Network Support
```bash
sudo dnf install NetworkManager-wifi network-manager-applet
```
- **Packages:** `NetworkManager-wifi`, `network-manager-applet`
- WiFi support and system tray network management

### Audio Support
```bash
sudo dnf install pulseaudio pavucontrol alsa-utils
```
- **Packages:** `pulseaudio`, `pavucontrol`, `alsa-utils`
- Audio server and GUI volume control

---

## 4. Terminal & Shell

### Terminal Emulators
```bash
sudo dnf install gnome-terminal
# OR
sudo dnf install xfce4-terminal
# OR
sudo dnf install alacritty
```
- **Packages:** `gnome-terminal`, `xfce4-terminal`, `alacritty`

### Enhanced Shells
```bash
sudo dnf install fish zsh
```
- **Packages:** `fish`, `zsh`
- Better alternatives to bash with improved features

---

## 5. Coding Tools

### Text Editors
```bash
sudo dnf install vim neovim nano
```
- **Packages:** `vim`, `neovim`, `nano`

### VS Code
```bash
# Add Microsoft repository
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

# Install VS Code
sudo dnf install code
```
- **Package:** `code`
- **Website:** https://code.visualstudio.com/

### Development Tools
```bash
sudo dnf install git gcc gcc-c++ make cmake python3 python3-pip nodejs npm
```
- **Packages:** `git`, `gcc`, `gcc-c++`, `make`, `cmake`, `python3`, `python3-pip`, `nodejs`, `npm`

### Development Tools Group (Alternative)
```bash
sudo dnf groupinstall "Development Tools"
```
- Installs a comprehensive set of build tools similar to Ubuntu's `build-essential`

---

## 6. File Manager & Basic Applications

```bash
sudo dnf install thunar thunar-archive-plugin firefox file-roller
```
- **Packages:**
  - `thunar` - Lightweight file manager
  - `thunar-archive-plugin` - Archive support for Thunar
  - `firefox` - Web browser
  - `file-roller` - Archive manager (zip, tar, etc.)

---

## 7. Fonts

```bash
sudo dnf install google-noto-sans-fonts google-noto-mono-fonts \
  dejavu-sans-fonts liberation-fonts
```
- **Packages:** `google-noto-sans-fonts`, `google-noto-mono-fonts`, `dejavu-sans-fonts`, `liberation-fonts`
- Essential fonts for UI and coding

---

## 8. Optional: RPM Fusion Repository

Enable RPM Fusion for additional software (codecs, proprietary drivers, etc.):

```bash
sudo dnf install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
```
- **Website:** https://rpmfusion.org/

---

## DNF Commands Quick Reference

Coming from Ubuntu's APT, here are the DNF equivalents:

| Ubuntu (APT) | Fedora (DNF) |
|--------------|--------------|
| `apt update` | `dnf check-update` |
| `apt upgrade` | `dnf upgrade` |
| `apt install <package>` | `dnf install <package>` |
| `apt remove <package>` | `dnf remove <package>` |
| `apt search <package>` | `dnf search <package>` |
| `apt list --installed` | `dnf list installed` |
| `apt autoremove` | `dnf autoremove` |

---

## Useful Resources

- **Fedora Packages Search:** https://packages.fedoraproject.org/
- **Fedora Documentation:** https://docs.fedoraproject.org/
- **DNF Command Reference:** https://dnf.readthedocs.io/
- **Fedora Quick Docs:** https://docs.fedoraproject.org/en-US/quick-docs/

---

## Additional Tips

### Keep Your System Updated
```bash
sudo dnf upgrade --refresh
```

### Search for Packages
```bash
dnf search <keyword>
```

### Get Package Information
```bash
dnf info <package-name>
```

### List Available Package Groups
```bash
dnf group list
```

### Clean Package Cache
```bash
sudo dnf clean all
```

---

## Customization Ideas

- **Install tmux** for terminal multiplexing: `sudo dnf install tmux`
- **Install htop** for system monitoring: `sudo dnf install htop`
- **Install ripgrep** for fast searching: `sudo dnf install ripgrep`
- **Install fzf** for fuzzy finding: `sudo dnf install fzf`
- **Configure dotfiles** for your shell, vim, and other tools

---

*Last updated: October 2025*
