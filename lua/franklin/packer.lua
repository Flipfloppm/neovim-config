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
  use ({ "catppuccin/nvim", as = "catppuccin", 
  config = function()
	  vim.cmd('colorscheme catppuccin-mocha')
  end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('nvim-lua/plenary.nvim')
  use({'ThePrimeagen/harpoon', branch = 'harpoon2', 
  requires = { {"nvim-lua/plenary.nvim"} }})
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'})
  use({'neovim/nvim-lspconfig'})
  use({'hrsh7th/nvim-cmp'})
  use({'hrsh7th/cmp-nvim-lsp'})
  use('ms-jpq/chadtree', {branch = 'chad', run = 'python3 -m chadtree deps'})
  use('tmsvg/pear-tree')
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim"
  }
end)
