return {
  "Yazeed1s/oh-lucy.nvim",
  version = false,
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.oh_lucy_italic_comments = true
    vim.g.oh_lucy_italic_functions = true
    vim.cmd([[colorscheme oh-lucy]])
  end,
}
