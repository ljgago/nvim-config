return {
  "ibhagwan/fzf-lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "junegunn/fzf"
  },
  config = function()
    require("fzf-lua").setup {
      fzf_opts = {
        ["--layout"] = "default",
      }
    }
  end,
}
