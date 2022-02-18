-- ===============================
-- Plugin - wbthomason/packer.nvim
-- ===============================

local M = {}

function M.setup()
  local install_path = vim.fn.stdpath("data").."/site/pack/packer/opt/packer.nvim"

  if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.api.nvim_command("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
    vim.api.nvim_command("packadd packer.nvim")
  end
  vim.api.nvim_command("packadd packer.nvim")

  -- config is a function
  local config = require("plugins")
  require("packer").startup(config)
end

return M
