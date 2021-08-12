return require('packer').startup(function()
return require('packer').startup({ function()
	use 'wbthomason/packer.nvim'

	use '~/sources/sbaildon/base16_256.nvim'

	use 'editorconfig/editorconfig-vim'

	use {
		'~/sources/sbaildon/lualine.nvim',
		config = [[require('config.lualine')]]
	}

	use {
		'lewis6991/gitsigns.nvim',
		requires = {
			'nvim-lua/plenary.nvim'
		},
		config = [[require('config.gitsigns')]]
	}

	use 'mattn/emmet-vim'

	use {
		'windwp/nvim-autopairs',
		config = [[require('config.nvim-autopairs')]]
	}

	-- use 'rstacruz/vim-closer'

	use {
		'neovim/nvim-lspconfig',
		config = [[require('config.nvim-lspconfig')]]
	}

	use {
		'hrsh7th/nvim-compe',
		config = [[require('config.nvim-compe')]]
	}

	use {
		'ray-x/lsp_signature.nvim',
		config = [[require('config.lsp_signature')]],
		disable = false
	}

	use {
		'glepnir/lspsaga.nvim',
		config = [[require('config.lspsaga')]]
	}

	use {
		'nvim-treesitter/playground',
		opt = true,
		cmd = "TSHighlightCapturesUnderCursor"
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

	-- use { 'norcalli/nvim-colorizer.lua', config = function () require('colorizer').setup() end }

	use {
		'onsails/lspkind-nvim',
		config = function () require('lspkind').init() end
	}

	-- use 'kyazdani42/nvim-tree.lua'
end)
end, config = {
		display = {
			prompt_border = "single"

		}
}})
