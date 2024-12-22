# Neovim Configuration

This repository contains a custom Neovim configuration with various plugins and settings to enhance the development experience.

## Table of Contents

- [Installation](#installation)
- [Plugins](#plugins)
- [Key Mappings](#key-mappings)
- [Configuration](#configuration)
- [Customization](#customization)

## Installation

1. Clone the repository to your local machine:

   ```sh
   git clone <repository-url> ~/.config/nvim
   ```

2. Install [Packer](https://github.com/wbthomason/packer.nvim) if you haven't already:

   ```sh
   git clone --depth 1 https://github.com/wbthomason/packer.nvim\
     ~/.local/share/nvim/site/pack/packer/start/packer.nvim
   ```

3. Open Neovim and run `:PackerSync` to install the plugins.

## Plugins

This configuration uses the following plugins:

- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [shrivastavasamarth22/sequoia_retro_nvim](https://github.com/shrivastavasamarth22/sequoia_retro_nvim)
- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [mbbill/undotree](https://github.com/mbbill/undotree)
- [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)
- [tpope/vim-surround](https://github.com/tpope/vim-surround)
- [ryanoasis/vim-devicons](https://github.com/ryanoasis/vim-devicons)
- [vim-airline/vim-airline](https://github.com/vim-airline/vim-airline)
- [ap/vim-css-color](https://github.com/ap/vim-css-color)
- [preservim/tagbar](https://github.com/preservim/tagbar)
- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [windwp/nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
- [VonHeikemen/lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim)
- [echasnovski/mini.icons](https://github.com/echasnovski/mini.icons)
- [RRethy/vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [stevearc/dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [folke/which-key.nvim](https://github.com/folke/which-key.nvim)
- [kylechui/nvim-surround](https://github.com/kylechui/nvim-surround)

## Key Mappings

Key mappings are defined in various files:

- remap.lua

- bufferline.lua

- lsp.lua

- undotree.lua

- tagbar.lua

- fugitive.lua

- telescope.lua

## Configuration

Configuration files are located in the following directories:

- samarth

- plugin

## Customization

You can customize the configuration by editing the files in the samarth and plugin directories. For example, to change the colorscheme, edit colors.lua.

For more details on each plugin's configuration, refer to their respective documentation.

## License

This project is licensed under the MIT License. See the LICENSE file for details.
