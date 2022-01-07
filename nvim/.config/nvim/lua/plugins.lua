local present, packer = pcall(require, "packer")

if not present then return end

return packer.startup({ function(use)
	use 'wbthomason/packer.nvim'

	use '~/sources/sbaildon/base16_256.nvim'

	use 'editorconfig/editorconfig-vim'

	use {
		'stevearc/dressing.nvim',
		config = [[require('config.dressing')]]
	}

	use {
		"petertriho/nvim-scrollbar",
		config = [[require('config.nvim-scrollbar')]]
	}

	use 'b3nj5m1n/kommentary'

	use 'mattn/emmet-vim'

	-- vscode-like pictograms for neovim lsp completion items
	use 'onsails/lspkind-nvim'

	use {
		'hrsh7th/nvim-cmp',
		requires = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"ray-x/lsp_signature.nvim"
		},
		config = [[require('config.nvim-cmp')]]
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		requires = {
			'nvim-treesitter/nvim-treesitter-refactor',
			'nvim-treesitter/nvim-treesitter-textobjects',
		},
		run = ':TSUpdate',
		config = [[require('config.nvim-treesitter')]]
	}

	use 'nvim-treesitter/playground'

	use 'ggandor/lightspeed.nvim'

	-- automatically highlighting other uses of the word under the cursor.
	use 'RRethy/vim-illuminate'

	use {
		'~/sources/sbaildon/lualine.nvim',
		requires = {
			'nvim-lua/lsp-status.nvim'
		},
		config = [[require('config.lualine')]]
	}

	use {
		'lewis6991/gitsigns.nvim',
		requires = { 'nvim-lua/plenary.nvim' },
		config = [[require('config.gitsigns')]]
	}

	use {
		'windwp/nvim-autopairs',
		requires = {
			"hrsh7th/nvim-cmp"
		},
		config = [[require('config.nvim-autopairs')]]
	}

	use {
		'nvim-telescope/telescope.nvim',
		requires = { 'nvim-lua/plenary.nvim' },
		config = [[require('config.telescope')]]
	}

	use {
		'neovim/nvim-lspconfig',
		config = [[require('config.nvim-lspconfig')]]
	}

	use {
		'williamboman/nvim-lsp-installer',
		requires = { 'neovim/nvim-lspconfig' }
	}

	use {
		'kyazdani42/nvim-tree.lua',
		opt = true,
		cmd = {"NvimTreeToggle"},
		config = [[require('config.nvim-tree')]]
	}

	-- Jump into the repositories (git, mercurial…) of your filesystem with telescope.nvim
	use {
		'cljoly/telescope-repo.nvim',
		requires = {'nvim-telescope/telescope.nvim'},
		opt = true,
		cmd = {"Telescope"},
		config = [[require('config.telescope-repo')]]
	}

	-- -- Neovim treesitter plugin for setting the commentstring based on the cursor location in a file.
	use {
		'JoosepAlviste/nvim-ts-context-commentstring',
		requires = {{'nvim-treesitter'}}
	}

	-- Indent guides for Neovim
	use {
		'lukas-reineke/indent-blankline.nvim',
		config = [[require('config.indent-blankline')]]
	}

	-- A tree like view for symbols in Neovim using the Language Server Protocol.
	use 'simrat39/symbols-outline.nvim'

	use {
		"SmiteshP/nvim-gps",
		disable = true,
		requires = "nvim-treesitter/nvim-treesitter",
		config = function() require("nvim-gps").setup({ }) end
	}

	use {
		"folke/trouble.nvim",
		requires = {{"kyazdani42/nvim-web-devicons"}},
		config = [[require('config.trouble')]]
	}

	use 'jubnzv/virtual-types.nvim'


end, config = {
		display = {
			prompt_border = "single"

		}
}})
