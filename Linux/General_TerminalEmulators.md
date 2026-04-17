# Modern Terminal Emulators

A curated list of modern, fast, and feature-rich terminal emulators.

---

## Alacritty

- **Homepage:** [alacritty.org](https://alacritty.org/)
- **Description:** A fast, cross-platform, OpenGL terminal emulator.

### Installation

**Ubuntu:**
```bash
sudo apt update
sudo apt install alacritty
```

**Fedora:**
```bash
sudo dnf install alacritty
```

---

## Kitty

- **Homepage:** [kitty-terminal.com](https://kitty-terminal.com/)
- **Description:** A fast, feature-rich, GPU-based terminal emulator.

### Installation

**Ubuntu:**
```bash
sudo apt update
sudo apt install kitty
```

**Fedora:**
```bash
sudo dnf install kitty
```

---

## WezTerm

- **Homepage:** [wezterm.org](https://wezterm.org/)
- **Description:** A GPU-accelerated cross-platform terminal emulator and multiplexer written in Rust.

### Installation

**Ubuntu:**
```bash
curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
sudo apt update
sudo apt install wezterm
```

**Fedora:**
```bash
sudo dnf install wezterm
```

---

## foot

- **Homepage:** [codeberg.org/dnkl/foot](https://codeberg.org/dnkl/foot)
- **Description:** A fast, lightweight and minimalistic Wayland terminal emulator.

### Installation

**Ubuntu:**
```bash
sudo apt update
sudo apt install foot
```

**Fedora:**
```bash
sudo dnf install foot
```

---

## Tabby

- **Homepage:** [tabby.sh](https://tabby.sh/)
- **Description:** A highly configurable terminal emulator, SSH and serial client.

### Installation

**Ubuntu (via .deb package):**

1.  Download the latest `.deb` package from the [Tabby GitHub releases page](https://github.com/Eugeny/tabby/releases).
2.  Install the package:

```bash
sudo dpkg -i /path/to/tabby-*.deb
# Fix dependencies if needed
sudo apt-get install -f
```

**Fedora (via .rpm package):**

1.  Download the latest `.rpm` package from the [Tabby GitHub releases page](https://github.com/Eugeny/tabby/releases).
2.  Install the package:

```bash
sudo dnf install /path/to/tabby-*.rpm
```
