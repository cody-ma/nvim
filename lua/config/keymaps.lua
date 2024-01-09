local map = vim.keymap

map.del("n", "<leader>e")
map.del("n", "<leader>fe")

map.set("n", ";", ":")
map.set("n", ":", ";")
map.set("n", "0", "^")
map.set("n", "gt", ":tab LspDefinition")
map.set("i", "jj", "<Esc>")

map.set("n", "<leader>v", ":vsp ")
map.set("n", "<leader>cp", ":let @+=expand('%:.')<cr>")
map.set("n", "<leader>/", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
map.set("n", "<leader>r", ":lua require('telescope.builtin').grep_string()<CR>")

vim.cmd([[
  cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))
  cnoreabbrev <expr> Q ((getcmdtype() is# ':' && getcmdline() is# 'Q')?('q'):('Q'))
  cnoreabbrev <expr> WQ ((getcmdtype() is# ':' && getcmdline() is# 'WQ')?('wq'):('WQ'))
  cnoreabbrev <expr> Wq ((getcmdtype() is# ':' && getcmdline() is# 'Wq')?('wq'):('Wq'))
  cnoreabbrev <expr> ag ('Rg')
]])
