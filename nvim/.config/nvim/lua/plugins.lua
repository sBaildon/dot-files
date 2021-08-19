return require('packer').startup({ function()
	use 'wbthomason/packer.nvim'

	use '~/sources/sbaildon/base16_256.nvim'

	use 'editorconfig/editorconfig-vim'

	use 'b3nj5m1n/kommentary'

	use 'mattn/emmet-vim'

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

	use {
		'~/sources/sbaildon/lualine.nvim',
		config = [[require('config.lualine')]]
	}

	use {
		'lewis6991/gitsigns.nvim',
		requires = { 'nvim-lua/plenary.nvim' },
		config = [[require('config.gitsigns')]]
	}

	use {
		'windwp/nvim-autopairs',
		config = [[require('config.nvim-autopairs')]]
	}

	use {
		'nvim-telescope/telescope.nvim',
		requires = { 'nvim-lua/plenary.nvim' },
		config = [[require('config.telescope')]]
	}

	use 'nvim-telescope/telescope-symbols.nvim'

	use {
		'neovim/nvim-lspconfig',
		config = [[require('config.nvim-lspconfig')]]
	}

	-- use {
	-- 	'hrsh7th/nvim-compe',
	-- 	config = [[require('config.nvim-compe')]]
	-- }


	-- -- vscode-like pictograms for neovim lsp completion items
	-- use {
	-- 	'onsails/lspkind-nvim',
	-- 	config = function () require('lspkind').init() end
	-- }

	-- use 'gelguy/wilder.nvim'

	-- Jump into the repositories (git, mercurial…) of your filesystem with telescope.nvim
	use {
		'cljoly/telescope-repo.nvim',
		requires = {'nvim-telescope/telescope.nvim'},
		config = [[require('config.telescope-repo')]]
	}

	use {
		'gbrlsnchs/telescope-lsp-handlers.nvim',
		requires = {'nvim-telescope/telescope.nvim'},
		config = [[require('config.telescope-lsp-handlers')]]
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

end, config = {
		display = {
			prompt_border = "single"

		}
}})
