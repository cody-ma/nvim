-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- Fix conceallevel for json files
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc" },
  callback = function()
    vim.wo.spell = false
    vim.wo.conceallevel = 0
  end,
})

-- <C-t> to open files in quickfix window in new tab
vim.api.nvim_create_autocmd("FileType", {
  pattern = "qf",
  callback = function()
    vim.api.nvim_buf_set_keymap(0, "n", "<C-t>", "<C-W><Enter><C-W>T", { noremap = true, silent = true })
  end,
})

-- <C-v> to open files in quickfix window in new tab
vim.api.nvim_create_autocmd("FileType", {
  pattern = "qf",
  callback = function()
    vim.api.nvim_buf_set_keymap(0, "n", "<C-v>", "<C-W><Enter><C-W>L", { noremap = true, silent = true })
  end,
})

-- TODO: open file in horizontal split
-- issue: tried binding to <ctrl-s> but that's "save file" by default in lazyvim
--        and it seems like autocmds get loaded after
