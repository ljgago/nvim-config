local M = {}

function M.config()
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
    vmappings = {
      c = {
        name = "Conjure",
        e = { ":ConjureEval<CR>", "Evaluates under cursor" },
      },
    },
    mappings = {
      ["<leader>"] = { ":NvimTreeToggle<CR>", "Toggle NvimTree" },
      -- ["<leader>"] = { ":Neotree toggle<CR>", "Toggle NeoTree" },
      ["e"] = { ":lua vim.diagnostic.open_float()<CR>", "Diagnostics" },
      ["h"] = { ":nohlsearch<CR>", "No Highlight" },
      b = {
        name = "Buffers",
        -- b = { ":FzfLua buffers<CR>", "List buffers" },
        b = { ":Telescope buffers<CR>", "List buffers" },
        o = { ":new<CR>", "Open a new empty buffer" },
        V = { ":vnew<CR>", "Open a vertical new empty buffer" },
        a = { ":ball<CR>", "Open all buffers" },
        A = { ":vertical ball<CR>", "Open in vertical all buffers" },
        n = { ":bn<CR>", "Next buffer" },
        p = { ":bp<CR>", "Previous buffer" },
        d = { ":bd<cr>", "Delete buffer" },
        D = { ":bd!<cr>", "Force delete buffer" },
      },
      c = {
        name = "Conjure",
        b = { ":ConjureEvalBuf<CR>", "Evaluates buffer" },
        e = { ":ConjureEval<CR>", "Evaluates under cursor" },
        f = { ":ConjureEvalFile<CR>", "Evaluates file" },
        t = { ":ConjureLogToggle<CR>", "Toggle Conjure log" },
      },
      f = {
        name = "Find",
        -- f = { ":FzfLua files<CR>", "Find file" },
        -- b = { ":FzfLua lgrep_curbuf<CR>", "Find current buffer" },
        -- l = { ":FzfLua blines<CR>", "Find current buffer lines" },
        -- L = { ":FzfLua lines<CR>", "Find buffers lines" },
        -- c = { ":FzfLua colorscheme<CR>", "Find colorscheme" },
        -- C = { ":FzfLua commands<CR>", "Find commands" },
        -- h = { ":FzfLua help_tags<CR>", "Find help" },
        -- j = { ":FzfLua jumplist<CR>", "Jumplist" },
        -- k = { ":FzfLua keymaps<CR>", "Keymaps" },
        -- M = { ":FzfLua man_pages<CR>", "Man pages" },
        -- r = { ":FzfLua oldfiles<CR>", "Open recent file" },
        -- R = { ":FzfLua registers<CR>", "Registers" },
        -- p = { ":FzfLua live_grep_native<CR>", "Find in project" },
        -- d = { ":FzfLua lsp_document_diagnostics<CR>", "Document Diagnostics" },
        -- l = { ":FzfLua blines<CR>", "Find current buffer lines" },
        -- L = { ":FzfLua lines<CR>", "Find buffers lines" },
        -- w = { ":FzfLua grep_cword<CR>", "Find word" },
        f = { ":Telescope find_files<CR>", "Find files" },
        b = { ":Telescope current_buffer_fuzzy_find<CR>", "Find current buffer" },
        c = { ":Telescope colorscheme<CR>", "Find colorscheme" },
        C = { ":Telescope commands<CR>", "Find commands" },
        h = { ":Telescope help_tags<CR>", "Find help" },
        j = { ":Telescope jumplist<CR>", "Jumplist" },
        k = { ":Telescope keymaps<CR>", "Keymaps" },
        M = { ":Telescope man_pages<CR>", "Man pages" },
        r = { ":Telescope oldfiles<CR>", "Open recent file" },
        R = { ":Telescope registers<CR>", "Registers" },
        p = { ":Telescope live_grep<CR>", "Find in project" },
        d = { ":Telescope diagnostics<CR>", "Document Diagnostics" },
        w = { ":Telescope grep_string<CR>", "Find word" },
      },
      g = {
        name = "Git",
        b = { ":Telescope git_branches<CR>", "Git branches" },
        f = { ":Telescope git_files<CR>", "Git files" },
        c = { ":Telescope git_commits<CR>", "Git commits" },
        s = { ":Telescope git_status<CR>", "Git status" },
        h = { ":Telescope git_stash<CR>", "Git stash" },
        -- b = { ":FzfLua git_branches<CR>", "Git branches" },
        -- f = { ":FzfLua git_files<CR>", "Git files" },
        -- c = { ":FzfLua git_commits<CR>", "Git commits" },
        -- s = { ":FzfLua git_status<CR>", "Git status" },
        l = { ":Git log<CR>", "Git log" },
        L = { ":Git log --oneline<CR>", "Git log one line" },
        B = { ":Git blame<CR>", "Git blame" },
        d = { ":Gvdiffsplit<CR>", "Git diff" },
        -- i = { ":lua vim.lsp.buf.implementation()<CR>", "Go to Implementation" },
        -- d = { ":lua vim.lsp.buf.definition()<CR>", "Go to Definition" },
        -- D = { ":lua vim.lsp.buf.declaration()<CR>", "Go to Declaration" },
      },
      l = {
        name = "LSP",
        e = { ":lua vim.diagnostic.open_float()<CR>", "Show Diagnostics" },
        n = { ":lua vim.diagnostic.goto_next()<CR>", "Next diagnostic" },
        p = { ":lua vim.diagnostic.goto_prev()<CR>", "Previous diagnostic" },
        I = { ":LspInstallInfo<CR>", "Installer Info" },
        a = { ":lua vim.lsp.buf.code_action()<CR>", "List Code Action" },
        R = { ":Telescope lsp_references<CR>", "List References" },
        s = { ":Telescope lsp_document_symbols<CR>", "Search document symbols" },
        S = { ":Telescope lsp_dynamic_workspace_symbols<CR>", "Search workspace Symbols" },
        -- a = { ":FzfLua lsp_code_actions<CR>", "List Code Action" },
        -- R = { ":FzfLua lsp_references<CR>", "List References" },
        -- i = { ":FzfLua lsp_implementation<CR>", "List Implementations" },
        -- s = { ":FzfLua lsp_document_symbols<CR>", "Search document symbols" },
        -- S = { ":FzfLua lsp_live_workspace_symbols<CR>", "Search workspace Symbols" },

        d = { ":Telescope lsp_definitions<CR>", "Go to Definition" },
        D = { ":lua vim.lsp.buf.declaration()<CR>", "Go to Declaration" },
        i = { ":Telescope lsp_implementations<CR>", "Go to Implementations" },
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

return {
  "folke/which-key.nvim",
  config = function()
    local wk = require("which-key")
    local config = M.config()

    wk.setup(config.setup)

    local opts = config.opts
    local vopts = config.vopts

    local mappings = config.mappings
    local vmappings = config.vmappings

    wk.register(mappings, opts)
    wk.register(vmappings, vopts)
  end,
}
