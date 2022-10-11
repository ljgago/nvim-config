-- =============================
-- Plugin - folke/which-key.nvim
-- =============================

local M = {}

function M.config()
  vim.g.mapleader = " "

  return {
    setup = {
      plugins = {
        marks = true,
        registers = true,
        presets = {
          operators = false,
          motions = false,
          text_objects = false,
          windows = true,
          nav = true,
          z = true,
          g = true,
        },
        spelling = { enabled = true, suggestions = 20 },
      },
      key_labels = {
        ["<space>"] = "<Space>",
        ["<leader>"] = "<Space>",
        ["<esc>"] = "ESC",
      },
      icons = {
        breadcrumb = "»",
        separator = "➜",
        group = "+",
      },
      window = {
        border = "none", -- none, single, double, shadow
        position = "bottom", -- bottom, top
        margin = { 1, 0, 1, 0 },
        padding = { 2, 2, 2, 2 },
      },
      layout = {
        height = { min = 4, max = 25 },
        width = { min = 20, max = 50 },
        spacing = 3,
        align = "left",
      },
      hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " },
      show_help = true,
    },

    opts = {
      mode = "n",
      prefix = "<leader>",
      buffer = nil,
      silent = true,
      noremap = true,
      nowait = true,
    },
    vopts = {
      mode = "v",
      prefix = "<leader>",
      buffer = nil,
      silent = true,
      noremap = true,
      nowait = true,
    },

    -- NOTE: Prefer using : over <cmd> as the latter avoids going back in normal-mode.
    -- see https://neovim.io/doc/user/map.html#:map-cmd
    vmappings = {},
    mappings = {
      ["<leader>"] = { ":NvimTreeToggle<CR>", "Toggle NvimTree" },
      ["e"] = { ":lua vim.diagnostic.open_float()<CR>", "Diagnostics" },
      ["h"] = { ":nohlsearch<CR>", "No Highlight" },
      b = {
        name = "Buffers",
        b = { ":FzfLua buffers<CR>", "List buffers" },
        o = { ":new<CR>", "Open a new empty buffer" },
        V = { ":vnew<CR>", "Open a vertical new empty buffer" },
        a = { ":ball<CR>", "Open all buffers" },
        A = { ":vertical ball<CR>", "Open in vertical all buffers" },
        n = { ":bn<CR>", "Next buffer" },
        p = { ":bp<CR>", "Previous buffer" },
        d = { ":bd<cr>", "Delete buffer" },
        D = { ":bd!<cr>", "Force delete buffer" },
      },
      f = {
        name = "Find",
        f = { ":FzfLua files<CR>", "Find file" },
        b = { ":FzfLua lgrep_curbuf<CR>", "Find current buffer" },
        l = { ":FzfLua blines<CR>", "Find current buffer lines" },
        L = { ":FzfLua lines<CR>", "Find buffers lines" },
        c = { ":FzfLua colorscheme<cr>", "Find colorscheme" },
        C = { ":FzfLua commands<CR>", "Find commands" },
        h = { ":FzfLua help_tags<CR>", "Find help" },
        j = { ":FzfLua jumplist<CR>", "Jumplist" },
        k = { ":FzfLua keymaps <CR>", "Keymaps" },
        M = { ":FzfLua man_pages <CR>", "Man pages" },
        r = { ":FzfLua oldfiles <CR>", "Open recent file" },
        R = { ":FzfLua registers <CR>", "Registers" },
        p = { ":FzfLua live_grep <CR>", "Find in project" },
        d = { ":FzfLua lsp_document_diagnostics<CR>", "Document Diagnostics" },
      },
      g = {
        name = "Git",
        b = { ":FzfLua git_branches<CR>", "Git branches" },
        f = { ":FzfLua git_files<CR>", "Git files" },
        c = { ":FzfLua git_commits<CR>", "Git commits" },
        l = { ":Git log<CR>", "Git log" },
        L = { ":Git log --oneline<CR>", "Git log one line" },
        B = { ":Git blame<CR>", "Git blame" },
        d = { ":Gvdiffsplit<CR>", "Git diff" },
        s = { ":FzfLua git_status<CR>", "Git status" },
      },
      l = {
        name = "LSP",
        e = { ":lua vim.diagnostic.open_float()<CR>", "Show Diagnostics" },
        n = { ":lua vim.diagnostic.goto_next()<CR>", "Next diagnostic" },
        p = { ":lua vim.diagnostic.goto_prev()<CR>", "Previous diagnostic" },
        i = { ":LspInfo<CR>", "Info" },
        I = { ":LspInstallInfo<CR>", "Installer Info" },
        a = { ":FzfLua lsp_code_actions<CR>", "List Code Action" },
        R = { ":FzfLua lsp_references<CR>", "List References" },
        i = { ":FzfLua lsp_implementation<CR>", "List Implementations" },
        s = { ":FzfLua lsp_document_symbols<CR>", "Search document symbols" },
        S = { ":FzfLua lsp_live_workspace_symbols<CR>", "Search workspace Symbols" },

        d = { ":lua vim.lsp.buf.definition()<CR>", "Go to Definition" },
        D = { ":lua vim.lsp.buf.declaration()<CR>", "Go to Declaration" },
        f = { ":lua vim.lsp.buf.format()<CR>", "Format" },
        r = { ":lua vim.lsp.buf.rename()<CR>", "Rename" },
        K = { ":lua vim.lsp.buf.hover()<CR>", "Show Hover" },
        h = { ":lua vim.lsp.buf.signature_help()<CR>", "Signature help" },
        w = { ":lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", "List workspace folders"},
        t = { ":lua vim.lsp.buf.type_definition()<CR>", "Type definition"},
      },
      p = {
        name = "Packer",
        c = { ":PackerCompile<CR>", "Compile" },
        i = { ":PackerInstall<CR>", "Install" },
        s = { ":PackerSync<CR>", "Sync" },
        S = { ":PackerStatus<CR>", "Status" },
        u = { ":PackerUpdate<CR>", "Update" },
        -- r = { ":lua require('nvim').reload()<CR>", "Reload" },
      },
      o = {
        name = "Open",
        t = { ":terminal<CR>", "Terminal" },
        u = { ":UndotreeToggle<CR>:UndotreeFocus<CR>", "UndoTree" },
      },
      t = {
        name = "Treesitter",
        i = { ":TSConfigInfo<CR>", "Info" },
        u = { ":TSUpdate<CR>", "Update" },
        s = { ":TSUpdateSync<CR>", "Update Sync" },
      },
      q = {
        name = "Quit",
        w = { ":wq<CR>", "Save and quit" },
        q = { ":q<CR>", "Quit" },
        Q = { ":q!<CR>", "Force Quit" },
      },
      w = {
        name = "Windows",
        w = { "<C-w><C-w>", "Switch window" },
        k = { "<C-w>k", "Up window" },
        j = { "<C-w>j", "Down window" },
        h = { "<C-w>h", "Left window" },
        l = { "<C-w>l", "Right window" },
        K = { "<C-w>K", "Move to upwards window" },
        J = { "<C-w>J", "Move to downwards window" },
        H = { "<C-w>H", "Move to left window" },
        L = { "<C-w>L", "Move to right window" },
        s = { ":split<CR>", "Split window" },
        v = { ":vsplit<CR>", "Vertical split window" },
        q = { ":q<CR>", "Close window" },
      },
    },
  }
end

function M.setup()
  local wk = require("which-key")
  local config = M.config()

  wk.setup(config.setup)

  local opts = config.opts
  local vopts = config.vopts

  local mappings = config.mappings
  local vmappings = config.vmappings

  wk.register(mappings, opts)
  wk.register(vmappings, vopts)
end

return M
