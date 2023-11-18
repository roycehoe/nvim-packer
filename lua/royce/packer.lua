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
  use({ 'rose-pine/neovim', as = 'rose-pine' })

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

end)
