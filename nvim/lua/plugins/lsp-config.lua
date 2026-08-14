return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup({
        registries = {
          "github:Crashdummyy/mason-registry", -- Needed for Roslyn server
          "github:mason-org/mason-registry",   -- Default upstream registry   
        },
      })
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },

  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      vim.lsp.config("lua_ls", {
        capabilities = capabilities,
      })

      vim.lsp.config("html", {
        capabilities = capabilities,
      })

      vim.lsp.config("solargraph", {
        capabilities = capabilities,
      })

      vim.lsp.config("ts_ls", {
        capabilities = capabilities,
      })

      vim.lsp.enable({
        "lua_ls",
        "html",
        "solargraph",
        "ts_ls",
      })

      --{
       -- "seblyng/roslyn.nvim",
--        ft = { "cs", "razor" },
 --       config = function()
  --        require("roslyn").setup({
   --         args = {
    --          "--logLevel=Information",
     --         "--extensionLogDirectory=" .. vim.fs.dirname(vim.lsp.get_log_path()),
      --      },
       --     config = {
              -- Pass your capabilities (like cmp-nvim-lsp) and on_attach here
        --      capabilities = require('cmp_nvim_lsp').default_capabilities(),
         --     on_attach = function(client, bufnr)
                -- Your standard LSP keymaps here (e.g., gd, K, etc.)
          --    end,
--            },
 --         })
  --      end,
   --   }

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
