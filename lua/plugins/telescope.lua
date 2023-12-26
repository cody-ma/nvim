return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<C-p>",
      "<Cmd>Telescope find_files<CR>",
      desc = "Find files",
    },
    {
      "<C-b>",
      "<Cmd>Telescope buffers<CR>",
      desc = "Recent buffers",
    },
  },
  dependencies = {
    {

      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
    {
      "nvim-telescope/telescope-live-grep-args.nvim",
      -- This will not install any breaking changes.
      -- For major updates, this must be adjusted manually.
      version = "^1.0.0",
    },
  },
  opts = {
    defaults = {
      mappings = {
        i = {
          ["<c-t>"] = require("telescope.actions").select_tab,
        },
      },
      layout_config = {
        width = 0.85,
        height = 0.95,
      },
      layout_strategy = "vertical",
      sorting_strategy = "descending",
    },
  },
}
