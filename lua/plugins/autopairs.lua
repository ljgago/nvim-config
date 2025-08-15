return {
  "windwp/nvim-autopairs",
  config = function()
    require("nvim-autopairs").setup({
      enable_check_bracket_line = false
      -- disable_filetype = {
      --   "scheme",
      --   "lisp",
      --   "clojure"
      -- }
    })
  end,
}
