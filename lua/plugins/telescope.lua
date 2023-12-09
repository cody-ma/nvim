return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<C-p>",
      "<cmd>Telescope find_files<CR>",
      desc = "Find files",
    },
    {
      "<leader>b",
      "<cmd>Telescope buffers<cr>",
      desc = "Recent",
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
      layout_config = {
        width = 0.95,
        height = 0.95,
        prompt_position = "top",
      },
      layout_strategy = "vertical",
      sorting_strategy = "ascending",
      winblend = 0,
    },
  },
}
