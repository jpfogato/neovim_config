# Neovim settings repository

This repository holds my Neovim plugins and their settings. 
The goal for the future is also to provide a shell script to install all dependencies so the repo can spin up automatically after clonning and running the installation script.

Clone it or download as a .zip and extract at ~ by `unzip .\neovim_config.zip ~`

Contained plugins:

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

## Rust
Required by lsp and blink.
Run the commands below to have the nigtly builds set as default toolchain for Rust

```bash
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
exec bash
cargo -V
rustup toolchain install nightly
cd ~
rustup override set nightly
rustup show
```

this should download and install rust, restart the shell and ensure it is in $PATH, then install the nightly builds, and then set it as default rust toolchian

## Lua
Required as it is the language selected for lazy.nvim plugin manager
```bash
sudo apt install lua5.x (change x for latest one available)
```
