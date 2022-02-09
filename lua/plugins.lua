-- ======================
-- PLUGINS INITIALIZATION
-- ======================

local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

vim.cmd('packadd packer.nvim')

return require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
  use { 'wbthomason/packer.nvim', opt = true }

  -- Icons
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'

  -- Syntax Highlight
  use 'sheerun/vim-polyglot'

  -- Status Bar
  use 'NTBBloodbath/galaxyline.nvim'

  -- Color
  use 'nvim-treesitter/nvim-treesitter'
  use 'norcalli/nvim-colorizer.lua'
  -- use 'christianchiarulli/nvcode-color-schemes.vim'
  use 'EdenEast/nightfox.nvim'
  use 'folke/tokyonight.nvim'
  use 'sainnhe/gruvbox-material'
  -- use 'shaunsingh/solarized.nvim'
  -- use 'ishan9299/nvim-solarized-lua'
  -- use 'gruvbox-community/gruvbox'
  use 'ellisonleao/gruvbox.nvim'
  use 'lifepillar/vim-solarized8'
  -- use 'eddyekofo94/gruvbox-flat.nvim'

  -- File Explorer
  -- use 'scrooloose/nerdtree'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    }
  }

  -- Fuzzy Searcher
  use {'junegunn/fzf', run = './install --all' }
  use {'junegunn/fzf.vim'}
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'

  -- Autocomplete
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'

  -- Git
  use 'tpope/vim-fugitive'
  use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}

  -- General Plugins
  use 'editorconfig/editorconfig-vim'
  use 'windwp/nvim-autopairs'
  use 'gennaro-tedesco/nvim-jqx'
  use 'alvan/vim-closetag'
  use 'junegunn/vim-easy-align'
  use 'tpope/vim-commentary'
  -- use 'p00f/nvim-ts-rainbow'
  use 'mg979/vim-visual-multi'
  -- use 'tpope/vim-surround'

  -- Langs

  -- Julia
  use 'JuliaEditorSupport/julia-vim'
  -- Clojure
  -- use 'p00f/nvim-ts-rainbow'
  --use 'tpope/vim-fireplace'
  --use 'luochen1990/rainbow'
  --use 'guns/vim-sexp'
  --use 'tpope/vim-sexp-mappings-for-regular-people'
  -- Dart / Flutter
  use {'akinsho/flutter-tools.nvim', requires = {'nvim-lua/plenary.nvim'}}
  -- Go
  use 'fatih/vim-go'
end)
