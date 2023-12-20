-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Options are automatically loaded before lazy.nvim startup
-- Add any additional options here
vim.g.mapleader = ","
vim.g.gruvbox_material_foreground = "mix"
vim.g.autoformat = "true"

vim.opt.swapfile = false

-- fold options
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
