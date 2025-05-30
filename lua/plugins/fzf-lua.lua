return {
  "ibhagwan/fzf-lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "junegunn/fzf"
  },
  config = function()
    require("fzf-lua").setup({
      "telescope",
      fzf_opts = {
        ["--layout"] = "default",
      },
      files = {
        prompt = "Files❯ ",
        cwd_prompt = false
      },
    })
  end,
}
