return {
  {
    "savq/melange-nvim",
    lazy = false,
    name = "melange",
    priority = 999,
    config = function()
      vim.cmd.colorscheme "melange"
    end
  }
}
