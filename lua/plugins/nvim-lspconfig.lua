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
        "gt",
        "<cmd>tab split | lua vim.lsp.buf.definition()<CR>",
        desc = "Goto definition in new tab",
      },
      {
        "ge",
        "<cmd>lua vim.lsp.buf.definition()<CR>",
        desc = "Goto definition in current window",
      },
      {
        "gv",
        "<cmd>vsplit | lua vim.lsp.buf.definition()<CR>",
        desc = "Goto definition in vsplit",
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
        ruby_lsp = {
          mason = false,
          cmd = { vim.fn.expand("~/.asdf/shims/ruby-lsp") },
          init_options = {
            formatter = "rubocop",
            linters = { "rubocop" },
          },
        },
        sqlls = {},
        terraformls = {},
        ts_ls = {},
        yamlls = {},
      },
    },
  },
}
