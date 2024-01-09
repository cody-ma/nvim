local lspconfig = require("lspconfig")

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- Useful for debugging formatter issues
      format_notify = false,
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
        ruby_ls = {
          cmd = { "bundle", "exec", "ruby-lsp" },
          init_options = {
            formatter = "auto",
          },
          settings = {},
        },
        sqlls = {},
        terraformls = {},
        tsserver = {},
        yamlls = {},
      },
    },
  },
}
