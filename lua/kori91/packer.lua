vim.cmd.packadd("packer.nvim")
return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	
	-- use("folke/tokyonight.nvim")
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use 'mfussenegger/nvim-jdtls'

	use( { "rose-pine/neovim", as = "rose-pine"} )

	use {
		"nvim-telescope/telescope.nvim", tag = "0.1.4",
		requires = { {"nvim-lua/plenary.nvim"} }
	}

    use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
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
end)
