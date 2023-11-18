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
  require('packer').startup(function(use)
	  use({ 'rose-pine/neovim', as = 'rose-pine' })
  end)

end)
