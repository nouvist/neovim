vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- color scheme
  use 'ellisonleao/gruvbox.nvim'

  -- typing enhance
  use 'easymotion/vim-easymotion'
  -- use 'rstacruz/vim-closer'
  use { 'andymass/vim-matchup', event = 'VimEnter' }
  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use 'vim-scripts/ReplaceWithRegister'

  -- lsp
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/nvim-cmp'

  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  use "williamboman/mason.nvim"
end)
