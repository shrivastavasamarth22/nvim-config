-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	'shrivastavasamarth22/sequoia_retro_nvim',
	as = 'sequoia_retro_nvim',
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('tpope/vim-surround')
	use('ryanoasis/vim-devicons')
	use('vim-airline/vim-airline')
	use('ap/vim-css-color')
	use('preservim/tagbar')
	use {
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup {}
		end
	}
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
	use('lukas-reineke/indent-blankline.nvim')
	use('windwp/nvim-ts-autotag')
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}
	use{'echasnovski/mini.icons', branch = 'stable'}
	use('RRethy/vim-illuminate')
	use{'stevearc/dressing.nvim'}
	use {
		'folke/which-key.nvim',
		event = 'VimEnter', -- Equivalent to lazy loading, replace with 'VeryLazy' logic if needed
		config = function()
			require('which-key').setup {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}

			-- Key mappings
			vim.api.nvim_set_keymap(
			'n',
			'<leader>?',
			"<cmd>lua require('which-key').show({ global = false })<CR>",
			{ noremap = true, silent = true, desc = "Buffer Local Keymaps (which-key)" }
			)
		end
	}
	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end
	})

	use({
		"neanias/everforest-nvim",
		config = function ()
			require("everforest").setup()
		end
	})

end)
