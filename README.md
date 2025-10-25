# Neovim settings repository

This repository holds my Neovim plugins and their settings. 
The goal for the future is also to provide a shell script to install all dependencies so the repo can spin up automatically after clonning and running the installation script.

Clone it and add it to the `~/.config` directory

```bash
git clone https://github.com/jpfogato/neovim_config.git
sudo mv neovim_config/ .config
```

## Contained plugins:

- sleuth
- wich-key
- treesitter
- oil
- kanagawa
- treesitter-textobjects
- statusline
- projects
- fzf-lua
- lsp (yanked from kickstart.nvim)
- Mason
- dressing
- rustacean
- dressing
- conform
- blink (requires building from source)

# Dependecies Installation:

## Environment
Will install the building tools for building neovim from source to ensure we get the latest one available for plugin support

```bash
sudo apt update
sudo apt install build-essential cmake gettext libtool libtool-bin autoconf automake pkg-config unzip git
```
**Recomended:** Ensure no remaining Neovim installation is in the system by `sudo apt purge --autoremove neovim`

Download and install Neovim

```bash
git clone https://github.com/neovim/neovim.git
cd neovim
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
exec bash
nvim --version
cd ..
rm -rf neovim
```

## Rust
Required by lsp and blink and lsp support for Rust.
Run the commands below to have the nigtly builds set as default toolchain for Rust

```bash
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
exec bash
cargo -V
rustup toolchain install nightly
cd ~
rustup override set nightly
rustup show
rustup component add rust-analyzer
```

this should download and install rust, restart the shell and ensure it is in $PATH, then install the nightly builds, and then set it as default rust toolchian

## Lua
Required as it is the language selected for lazy.nvim plugin manager
```bash
sudo apt install lua5.x (change x for latest one available)
```

## Node.js
required by prettier and bash-language-server support

```bash
curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install nodejs -y
```

## Python
required for autopep8 python support

```bash
sudo apt install python3-pip -y
sudo apt install python3.12-venv
```
