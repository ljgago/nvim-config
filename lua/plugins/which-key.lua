return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  keys = {
  },
  opts = {
    preset = "helix",
    icons = {
      rules = false,
    },
    delay = function(ctx)
      return ctx.plugin and 600 or 600
    end,
    spec = {
      { "<leader>?",        function() require("which-key").show({ global = true }) end,         desc = "Buffer Local Keymaps", },
      { "<leader><leader>", ":NvimTreeToggle<CR>",                                               desc = "Toggle NvimTree",                   nowait = true,       remap = false },
      -- Helix like keymaps
      { "<leader>f",        ":Telescope find_files<CR>",                                         desc = "Open file picker",                  nowait = true,       remap = false },
      { "<leader>F",        ":Telescope find_files<CR>",                                         desc = "Open file picker",                  nowait = true,       remap = false },
      { "<leader>b",        ":Telescope buffers<CR>",                                            desc = "Open buffer picker",                nowait = true,       remap = false },
      { "<leader>j",        ":Telescope jumplist<CR>",                                           desc = "Open jumplist picker",              nowait = true,       remap = false },
      { "<leader>s",        ":Telescope lsp_document_symbols<CR>",                               desc = "Open symbols picker",               nowait = true,       remap = false },
      { "<leader>d",        ":Telescope diagnostics<CR>",                                        desc = "Show diagnostics picker",           nowait = true,       remap = false },
      { "<leader>D",        ":Telescope diagnostics<CR>",                                        desc = "Show diagnostics picker",           nowait = true,       remap = false },
      { "<leader>a",        ":lua vim.lsp.buf.code_action()<CR>",                                desc = "Perform code action",               nowait = true,       remap = false },
      { "<leader>r",        ":lua vim.lsp.buf.rename()<CR>",                                     desc = "Rename symbol",                     nowait = true,       remap = false },
      { "<leader>/",        ":Telescope live_grep<CR>",                                          desc = "Global search in workspace folder", nowait = true,       remap = false },
      { "<leader>k",        ":lua vim.lsp.buf.hover()<CR>",                                      desc = "Show docs for item under cursor",   nowait = true,       remap = false },
      { "<leader>h",        ":nohlsearch<CR>",                                                   desc = "No Highlight",                      nowait = true,       remap = false },
      { ";",                ":nohlsearch<CR>",                                                   desc = "No Highlight",                      nowait = true,       remap = false },

      { "<leader>y",        '"+y',                                                               desc = "Copy to system clipboard",          mode = { "n", "x" }, nowait = true, remap = false, silent = true },
      { "<leader>p",        '"+p',                                                               desc = "Paste from system clipboard",       mode = { "n", "v" }, nowait = true, remap = false },

      { "ga",               "<Cmd>b#<CR>",                                                       desc = "Go last accessed file",             mode = { "n", "v" }, nowait = true, remap = false },
      { "gd",               ":Telescope lsp_definitions<CR>",                                    desc = "Go to definitions",                 mode = { "n" } }, -- show lsp implementations
      { "gi",               ":Telescope lsp_implementations<CR>",                                desc = "Go to implementations",             mode = { "n" } }, -- show lsp implementations

      -- { "<leader>b",        group = "Buffers",                                                   nowait = true,                             remap = false },
      -- { "<leader>bA",       ":vertical ball<CR>",                                                desc = "Open in vertical all buffers",     nowait = true,                        remap = false },
      -- { "<leader>bD",       ":bd!<cr>",                                                          desc = "Force delete buffer",              nowait = true,                        remap = false },
      -- { "<leader>bV",       ":vnew<CR>",                                                         desc = "Open a vertical new empty buffer", nowait = true,                        remap = false },
      -- { "<leader>ba",       ":ball<CR>",                                                         desc = "Open all buffers",                 nowait = true,                        remap = false },
      -- { "<leader>bb",       ":Telescope buffers<CR>",                                            desc = "List buffers",                     nowait = true,                        remap = false },
      -- { "<leader>bd",       ":bd<cr>",                                                           desc = "Delete buffer",                    nowait = true,                        remap = false },
      -- { "<leader>bn",       ":bn<CR>",                                                           desc = "Next buffer",                      nowait = true,                        remap = false },
      -- { "<leader>bo",       ":new<CR>",                                                          desc = "Open a new empty buffer",          nowait = true,                        remap = false },
      -- { "<leader>bp",       ":bp<CR>",                                                           desc = "Previous buffer",                  nowait = true,                        remap = false },

      -- { "<leader>c",        group = "Conjure",                                                   mode = "v",                                 nowait = true,       remap = false },
      -- { "<leader>ce",       ":ConjureEval<CR>",                                                  desc = "Evaluates under cursor",            mode = "v",          nowait = true, remap = false },
      --
      -- { "<leader>c",        group = "Conjure",                                                   nowait = true,                              remap = false },
      -- { "<leader>cb",       ":ConjureEvalBuf<CR>",                                               desc = "Evaluates buffer",                  nowait = true,       remap = false },
      -- { "<leader>ce",       ":ConjureEval<CR>",                                                  desc = "Evaluates under cursor",            nowait = true,       remap = false },
      -- { "<leader>cf",       ":ConjureEvalFile<CR>",                                              desc = "Evaluates file",                    nowait = true,       remap = false },
      -- { "<leader>ct",       ":ConjureLogToggle<CR>",                                             desc = "Toggle Conjure log",                nowait = true,       remap = false },
      -- { "<leader>e",        ":lua vim.diagnostic.open_float()<CR>",                              desc = "Diagnostics",                       nowait = true,       remap = false },

      -- { "<leader>f",        group = "Find",                                                      nowait = true,                             remap = false },
      -- { "<leader>fC",       ":Telescope commands<CR>",                                           desc = "Find commands",                    nowait = true,                        remap = false },
      -- { "<leader>fM",       ":Telescope man_pages<CR>",                                          desc = "Man pages",                        nowait = true,                        remap = false },
      -- { "<leader>fR",       ":Telescope registers<CR>",                                          desc = "Registers",                        nowait = true,                        remap = false },
      -- { "<leader>fb",       ":Telescope current_buffer_fuzzy_find<CR>",                          desc = "Find current buffer",              nowait = true,                        remap = false },
      -- { "<leader>fc",       ":Telescope colorscheme<CR>",                                        desc = "Find colorscheme",                 nowait = true,                        remap = false },
      -- { "<leader>fd",       ":Telescope diagnostics<CR>",                                        desc = "Document Diagnostics",             nowait = true,                        remap = false },
      -- { "<leader>ff",       ":Telescope find_files<CR>",                                         desc = "Find files",                       nowait = true,                        remap = false },
      -- { "<leader>fh",       ":Telescope help_tags<CR>",                                          desc = "Find help",                        nowait = true,                        remap = false },
      -- { "<leader>fj",       ":Telescope jumplist<CR>",                                           desc = "Jumplist",                         nowait = true,                        remap = false },
      -- { "<leader>fk",       ":Telescope keymaps<CR>",                                            desc = "Keymaps",                          nowait = true,                        remap = false },
      -- { "<leader>fp",       ":Telescope live_grep<CR>",                                          desc = "Find in project",                  nowait = true,                        remap = false },
      -- { "<leader>fr",       ":Telescope oldfiles<CR>",                                           desc = "Open recent file",                 nowait = true,                        remap = false },
      -- { "<leader>fw",       ":Telescope grep_string<CR>",                                        desc = "Find word",                        nowait = true,                        remap = false },

      { "<leader>g",        group = "Git",                                                       nowait = true,                              remap = false },
      { "<leader>gB",       ":Git blame<CR>",                                                    desc = "Git blame",                         nowait = true,       remap = false },
      { "<leader>gL",       ":Git log --oneline<CR>",                                            desc = "Git log one line",                  nowait = true,       remap = false },
      { "<leader>gb",       ":Telescope git_branches<CR>",                                       desc = "Git branches",                      nowait = true,       remap = false },
      { "<leader>gc",       ":Telescope git_commits<CR>",                                        desc = "Git commits",                       nowait = true,       remap = false },
      { "<leader>gd",       ":Gvdiffsplit<CR>",                                                  desc = "Git diff",                          nowait = true,       remap = false },
      { "<leader>gf",       ":Telescope git_files<CR>",                                          desc = "Git files",                         nowait = true,       remap = false },
      { "<leader>gh",       ":Telescope git_stash<CR>",                                          desc = "Git stash",                         nowait = true,       remap = false },
      { "<leader>gl",       ":Git log<CR>",                                                      desc = "Git log",                           nowait = true,       remap = false },
      { "<leader>gs",       ":Telescope git_status<CR>",                                         desc = "Git status",                        nowait = true,       remap = false },

      { "<leader>l",        group = "LSP",                                                       nowait = true,                              remap = false },
      { "<leader>lD",       ":lua vim.lsp.buf.declaration()<CR>",                                desc = "Go to Declaration",                 nowait = true,       remap = false },
      { "<leader>lI",       ":LspInstallInfo<CR>",                                               desc = "Installer Info",                    nowait = true,       remap = false },
      { "<leader>lK",       ":lua vim.lsp.buf.hover()<CR>",                                      desc = "Show Hover",                        nowait = true,       remap = false },
      { "<leader>lR",       ":Telescope lsp_references<CR>",                                     desc = "List References",                   nowait = true,       remap = false },
      { "<leader>lS",       ":Telescope lsp_dynamic_workspace_symbols<CR>",                      desc = "Search workspace Symbols",          nowait = true,       remap = false },
      { "<leader>la",       ":lua vim.lsp.buf.code_action()<CR>",                                desc = "Code Action List",                  nowait = true,       remap = false },
      { "<leader>ld",       ":Telescope lsp_definitions<CR>",                                    desc = "Go to Definition",                  nowait = true,       remap = false },
      { "<leader>le",       ":lua vim.diagnostic.open_float()<CR>",                              desc = "Show Diagnostics",                  nowait = true,       remap = false },
      { "<leader>lf",       ":lua vim.lsp.buf.format()<CR>",                                     desc = "Format",                            nowait = true,       remap = false },
      { "<leader>lh",       ":lua vim.lsp.buf.signature_help()<CR>",                             desc = "Signature help",                    nowait = true,       remap = false },
      { "<leader>li",       ":Telescope lsp_implementations<CR>",                                desc = "Go to Implementations",             nowait = true,       remap = false },
      { "<leader>ln",       ":lua vim.diagnostic.goto_next()<CR>",                               desc = "Next diagnostic",                   nowait = true,       remap = false },
      { "<leader>lp",       ":lua vim.diagnostic.goto_prev()<CR>",                               desc = "Previous diagnostic",               nowait = true,       remap = false },
      { "<leader>lr",       ":lua vim.lsp.buf.rename()<CR>",                                     desc = "Rename",                            nowait = true,       remap = false },
      { "<leader>ls",       ":Telescope lsp_document_symbols<CR>",                               desc = "Search document symbols",           nowait = true,       remap = false },
      { "<leader>lt",       ":lua vim.lsp.buf.type_definition()<CR>",                            desc = "Type definition",                   nowait = true,       remap = false },
      { "<leader>lw",       ":lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", desc = "List workspace folders",            nowait = true,       remap = false },

      { "<leader>a",        group = "AI",                                                        nowait = true,                              remap = false },
      { "<leader>aa",       ":CodeCompanionActions<CR>",                                         desc = "CodeCompanion Action List",         nowait = true,       remap = false },

      { "<leader>o",        group = "Open",                                                      nowait = true,                              remap = false },
      { "<leader>ot",       ":terminal<CR>",                                                     desc = "Terminal",                          nowait = true,       remap = false },
      { "<leader>ou",       ":UndotreeToggle<CR>:UndotreeFocus<CR>",                             desc = "UndoTree",                          nowait = true,       remap = false },

      { "<leader>q",        group = "Quit",                                                      nowait = true,                              remap = false },
      { "<leader>qQ",       ":q!<CR>",                                                           desc = "Force Quit",                        nowait = true,       remap = false },
      { "<leader>qq",       ":q<CR>",                                                            desc = "Quit",                              nowait = true,       remap = false },
      { "<leader>qw",       ":wq<CR>",                                                           desc = "Save and quit",                     nowait = true,       remap = false },

      { "<leader>t",        group = "Treesitter",                                                nowait = true,                              remap = false },
      { "<leader>ti",       ":TSConfigInfo<CR>",                                                 desc = "Info",                              nowait = true,       remap = false },
      { "<leader>ts",       ":TSUpdateSync<CR>",                                                 desc = "Update Sync",                       nowait = true,       remap = false },
      { "<leader>tu",       ":TSUpdate<CR>",                                                     desc = "Update",                            nowait = true,       remap = false },

      { "<leader>w",        group = "Windows",                                                   nowait = true,                              remap = false },
      { "<leader>wH",       "<C-w>H",                                                            desc = "Move to left window",               nowait = true,       remap = false },
      { "<leader>wJ",       "<C-w>J",                                                            desc = "Move to downwards window",          nowait = true,       remap = false },
      { "<leader>wK",       "<C-w>K",                                                            desc = "Move to upwards window",            nowait = true,       remap = false },
      { "<leader>wL",       "<C-w>L",                                                            desc = "Move to right window",              nowait = true,       remap = false },
      { "<leader>wh",       "<C-w>h",                                                            desc = "Left window",                       nowait = true,       remap = false },
      { "<leader>wj",       "<C-w>j",                                                            desc = "Down window",                       nowait = true,       remap = false },
      { "<leader>wk",       "<C-w>k",                                                            desc = "Up window",                         nowait = true,       remap = false },
      { "<leader>wl",       "<C-w>l",                                                            desc = "Right window",                      nowait = true,       remap = false },
      { "<leader>wq",       ":q<CR>",                                                            desc = "Close window",                      nowait = true,       remap = false },
      { "<leader>ws",       ":split<CR>",                                                        desc = "Split window",                      nowait = true,       remap = false },
      { "<leader>wv",       ":vsplit<CR>",                                                       desc = "Vertical split window",             nowait = true,       remap = false },
      { "<leader>ww",       "<C-w><C-w>",                                                        desc = "Switch window",                     nowait = true,       remap = false },
    }
  },

  -- config = function()
  --   local wk = require("which-key")
  --   local config = M.config()
  --
  --   -- wk.setup(config.setup)
  --
  --   -- local opts = config.opts
  --   -- local vopts = config.vopts
  --
  --   wk.add(config.opts.spec)
  --   -- local mappings = config.mappings
  --   -- local vmappings = config.vmappings
  --
  --   -- wk.register(mappings, opts)
  --   -- wk.register(vmappings, vopts)
  -- end,
}
