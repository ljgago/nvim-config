return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "theHamsta/nvim-dap-virtual-text",
    "rcarriga/nvim-dap-ui",
    "leoluz/nvim-dap-go",
    "mxsdev/nvim-dap-vscode-js",
    "anuvyklack/hydra.nvim",
    "nvim-telescope/telescope-dap.nvim",
    "rcarriga/cmp-dap",
  },
  keys = { { "<leader>d", desc = "Open Debug menu" } },
  config = function()
    local ok_cmp, cmp = pcall(require, "cmp")
    if ok_cmp then
      cmp.setup.filetype({ "dap-repl", "dapui_watches" }, {
        sources = cmp.config.sources({
          { name = "dap" },
        }, {
          { name = "buffer" },
        }),
      })
    end
  end,
}
