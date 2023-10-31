local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup {
  spec = {
    { import = "plugins" },
    { import = "plugins.lsp" },
    { import = "plugins.langs" },
  },
  checker = {
    enabled = false,
    notify = false
  },
  -- dev = {
  --   path = "~/code/plugins",
  --   fallback = true,
  --   patterns = { "adalessa" },
  -- },
  ui = {
    border = "rounded",
  },
  change_detection = {
    enabled = false,
    notify = false,
  },
  performance = {
    rtp = {
      disabled_plugins = {
      },
    },
  },
}
