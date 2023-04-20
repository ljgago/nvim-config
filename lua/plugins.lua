local commit = {
  nvim_tree = "3f4ed9b6c2598ab8304186486a05ae7a328b8d49"
}

return function()
  use {
    -- Packer can manage itself as an optional plugin
    { "wbthomason/packer.nvim", opt = true },

    -- Icons
    { "kyazdani42/nvim-web-devicons" },
    { "ryanoasis/vim-devicons" },

    -- Syntax Highlight
    -- { "sheerun/vim-polyglot" },
    -- { "nathom/filetype.nvim" },
    -- { "SeniorMars/typst.nvim" },

    -- Status Bar
    { "nvim-lualine/lualine.nvim",
      requires = { "kyazdani42/nvim-web-devicons" } },

    -- File Explorer
    { "kyazdani42/nvim-tree.lua",
      -- commit = commit.nvim_tree,
      requires = { "kyazdani42/nvim-web-devicons" } },

    -- Fuzzy Finder
    { "junegunn/fzf", run = "./install --all" },
    { "junegunn/fzf.vim" },
    { "nvim-telescope/telescope.nvim", requires = { "nvim-lua/plenary.nvim" } },
    { "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
    { "ibhagwan/fzf-lua",
      -- optional for icon support
      requires = { "kyazdani42/nvim-web-devicons" }
    },

    -- LSP
    { "neovim/nvim-lspconfig" },
    { "glepnir/lspsaga.nvim" },
    { "jose-elias-alvarez/null-ls.nvim" },

    -- Autocomplete
    { "hrsh7th/nvim-cmp",
      requires = {
        { "hrsh7th/cmp-buffer" },
        { "hrsh7th/cmp-nvim-lsp" },
        { "hrsh7th/cmp-path" },
        { "hrsh7th/cmp-nvim-lua" },
        { "hrsh7th/cmp-vsnip" },
        { "tamago324/cmp-zsh" },
        -- Snippets
        { "rafamadriz/friendly-snippets" },
        { "L3MON4D3/LuaSnip" },
        { "saadparwaiz1/cmp_luasnip" },
        { "hrsh7th/vim-vsnip" },
        { "hrsh7th/cmp-cmdline" },
      },
    },

    -- Git
    { "tpope/vim-fugitive" },
    { "lewis6991/gitsigns.nvim", requires = {"nvim-lua/plenary.nvim"} },

    -- Popup key bindings
    { "folke/which-key.nvim" },

    -- Color tools
    { "nvim-treesitter/nvim-treesitter" },
    { "norcalli/nvim-colorizer.lua" },

    -- Color Themes
    { "ellisonleao/gruvbox.nvim" },
    { "shaunsingh/solarized.nvim" },
    { "lifepillar/vim-solarized8" },
    { "sainnhe/gruvbox-material" },
    { "luisiacc/gruvbox-baby" },
    { "rebelot/kanagawa.nvim" },
    -- { "gruvbox-community/gruvbox" },
    -- { "christianchiarulli/nvcode-color-schemes.vim" },
    -- { "EdenEast/nightfox.nvim" },
    -- { "folke/tokyonight.nvim" },
    -- { "ishan9299/nvim-solarized-lua" },
    -- { "eddyekofo94/gruvbox-flat.nvim" },

    -- General Plugins
    { "editorconfig/editorconfig-vim" },
    { "windwp/nvim-autopairs" },
    { "gennaro-tedesco/nvim-jqx" },
    { "alvan/vim-closetag" },
    -- { "tpope/vim-commentary" },
    { "numToStr/Comment.nvim" },
    { "mg979/vim-visual-multi" },
    { "junegunn/vim-easy-align" },
    { "mbbill/undotree" },
    { "p00f/nvim-ts-rainbow" },

    -- Langs
    -- Java
    { "mfussenegger/nvim-jdtls" },
    -- Clojure
    -- { "Olical/conjure" },
    -- { "tpope/vim-fireplace" },
    -- { "tpope/vim-surround" }
    -- { "luochen1990/rainbow" },
    -- { "guns/vim-sexp" },
    -- { "tpope/vim-sexp-mappings-for-regular-people" },
    -- Dart / Flutter
    { "akinsho/flutter-tools.nvim", requires = {"nvim-lua/plenary.nvim"} },
    -- Go
    { "fatih/vim-go" },
    -- Julia
    { "JuliaEditorSupport/julia-vim" },
  }
end
