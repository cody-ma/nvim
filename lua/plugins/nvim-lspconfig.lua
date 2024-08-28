local lspconfig = require("lspconfig")

return {
  {
    "neovim/nvim-lspconfig",
    keys = {
      {
        "gd",
        "<cmd>tab split | lua vim.lsp.buf.definition()<CR>",
        desc = "Goto definition in new tab",
      },
      {
        "ge",
        "<cmd>lua vim.lsp.buf.definition()<CR>",
        desc = "Goto definition in current window",
      },
    },
    opts = {
      -- Useful for debugging formatter issues
      format_notify = false,
      inlay_hints = {
        enabled = false,
      },
      servers = {
        bashls = {
          filetypes = { "sh", "zsh" },
        },
        denols = {},
        diagnosticls = {},
        dockerls = {},
        helm_ls = {},
        lua_ls = {
          Lua = {
            workspace = { checkThirdParty = false },
            telemetry = { enable = false },
          },
        },
        marksman = {},
        pyright = {},
        rubocop = {
          -- See: https://docs.rubocop.org/rubocop/usage/lsp.html
          cmd = { "bundle", "exec", "rubocop", "--lsp" },
          root_dir = lspconfig.util.root_pattern("Gemfile", ".git", "."),
        },
        ruby_lsp = {},
        sqlls = {},
        terraformls = {},
        tsserver = {},
        yamlls = {},
      },
    },
  },
}
