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
        sqlls = {},
        solargraph = {
          -- See: https://medium.com/@cristianvg/neovim-lsp-your-rbenv-gemset-and-solargraph-8896cb3df453
          cmd = { os.getenv("HOME") .. "/.asdf/shims/solargraph", "stdio" },
          root_dir = lspconfig.util.root_pattern("Gemfile", ".git", "."),
          settings = {
            solargraph = {
              autoformat = true,
              completion = true,
              diagnostics = true,
              folding = true,
              references = true,
              rename = true,
              symbols = true,
            },
          },
        },
        terraformls = {},
        tsserver = {
          keys = {
            { "<leader>co", "<cmd>TypescriptOrganizeImports<CR>", desc = "Organize Imports" },
          },
        },
        yamlls = {},
      },
    },
  },
}
