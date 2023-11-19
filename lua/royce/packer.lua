-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
  -- Packer can manage itself
	use 'wbthomason/packer.nvim'


  -- Telescope: For fuzzy finding files
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Rose pine: Color scheme
  use'shaunsingh/nord.nvim'

  -- Treesitter: Parsing library
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    additional_vim_regex_highlighting = false,

  -- Treesitter: Parsing library playground
  use('nvim-treesitter/playground')

  -- Harpoon: Bookmark files
  use('theprimeagen/harpoon')

  -- UndoTree: See all your changes as a tree, like git
  use('mbbill/undotree')

  -- Fugitive: Git repo manager
  use('tpope/vim-fugitive')

  -- LspZero: Autocompletion
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  --- Uncomment these if you want to manage LSP servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
}

end)
