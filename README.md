# just another neovim config

## Installation

Follow these steps to install this neovim configuration.

### Config

Git clone this repo to your nvim folder.

#### Unix

```bash
git clone https://github.com/nouvist/neovim\
 ~/.config/nvim/init.vim
```

#### XDG_CONFIG_HOME

```bash
git clone https://github.com/nouvist/neovim\
 $XDG_CONFIG_HOME/nvim/init.vim
```

#### Windows

```powershell
git clone https://github.com/nouvist/neovim "$env:LOCALAPPDATA\nvim"
```

### Install [packer.nvim](https://github.com/wbthomason/packer.nvim)

This config uses packer.nvim as its plugin manager, so you need to install it first.

#### Unix

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

#### Windows

```powershell
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

### PackerSync

Open neovim and start PackerSync with `:PackerSync` and then restart your neovim.
