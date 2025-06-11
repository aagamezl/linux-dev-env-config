# Quiirus

Quiirus is a collection of scripts to set up a development environment.

## Installation

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/aagamezl/quiirus/master/boot.sh)"
```

## Installed Applications and Settings by install.sh

The `install.sh` script installs a variety of applications, fonts, and system settings to provide a useful development environment.

### Core Tools
- **Git:** Version control system for tracking changes in source code.
- **Zsh:** A powerful shell for interactive use and scripting.
- **Zsh Plugins:** Enhancements for Zsh including autosuggestions and syntax highlighting.
- **Oh My Zsh:** Framework for managing Zsh configuration.
- **Powerlevel10k:** A fast and customizable Zsh theme.
- **tmux:** Terminal multiplexer to manage multiple terminal sessions.

### Desktop Tools
- **Brave Browser:** Privacy-focused web browser.

### Development Editors
- **Visual Studio Code:** Popular code editor with extensive language support.
- **Windsurf:** The new purpose-built IDE to harness magic.
- **Zed:** A next-generation code editor designed for high-performance collaboration with humans and AI..


### Development Tools
- **Docker:** Platform for developing, shipping, and running applications in containers.
- **Docker Compose:** Tool for defining and running multi-container Docker applications.
- **Lazygit:** Simple terminal UI for Git commands.
- **Lazydocker:** Simple terminal UI for Docker commands.

### Fonts Installed
The following Nerd Fonts are installed:
- Cascadia Mono
- Fira Mono
- JetBrains Mono
- MesloLGS

### GNOME Settings
- Center new windows on the screen.
- Set Cascadia Mono Nerd Font as the default monospace font.
- Show week numbers in the GNOME calendar.
- Disable ambient sensors for screen brightness adjustment.

### Optional Applications
- **Zed:** Lightweight code editor installed via script.
- **Windsurf:** CLI tool installed from a custom repository.

## Additional Information

- The scripts include error handling to stop on failures.
- Backups of configuration files like `.zshrc` and `.tmux.conf` are created before changes.
- Fonts are installed locally to the user's home directory.
- GNOME and VS Code keybindings and settings fixes are applied.

Feel free to explore the `install` directory for individual app installation scripts and customize the setup as needed.