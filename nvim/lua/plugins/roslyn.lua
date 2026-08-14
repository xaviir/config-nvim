return {
  {
    "seblyng/roslyn.nvim",
    ft = { "cs", "razor" },
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      require("roslyn").setup({
        config = {
          capabilities = require("cmp_nvim_lsp").default_capabilities(),
        },
      })
    end,
  },
}
