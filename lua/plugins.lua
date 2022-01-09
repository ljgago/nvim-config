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
  --use { 'svermeulen/vimpeccable' }

  -- Icons
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'

  -- Status Bar
  use 'NTBBloodbath/galaxyline.nvim'

  -- Color
  use 'nvim-treesitter/nvim-treesitter'
  use 'norcalli/nvim-colorizer.lua'
  use 'christianchiarulli/nvcode-color-schemes.vim'
  -- use 'Th3Whit3Wolf/one-nvim'
  -- use 'NTBBloodbath/doom-one.nvim'
  use 'EdenEast/nightfox.nvim'
  -- use 'olimorris/onedark.nvim'
  -- use 'navarasu/onedark.nvim'
  -- use 'shaunsingh/nord.nvim'
  use 'folke/tokyonight.nvim'
  -- use 'sainnhe/edge'
  use 'sainnhe/gruvbox-material'

  -- File Explorer
  use 'scrooloose/nerdtree'

  -- Fuzzy Searcher
  use {'junegunn/fzf', run = './install --all' }
  use {'junegunn/fzf.vim'}

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'

  -- Autocomplete
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/vim-vsnip'

  -- Git
  use 'tpope/vim-fugitive'
  use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}

  -- Flutter
  use {'akinsho/flutter-tools.nvim', requires = {'nvim-lua/plenary.nvim'}}

  -- Go
  use 'fatih/vim-go'

  -- Syntax Highlight
  use 'sheerun/vim-polyglot'

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
  -- Go
  -- use 'fatih/vim-go'
end)
