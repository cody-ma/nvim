vim.g.mapleader = ","
vim.g.gruvbox_material_foreground = "mix"
vim.g.autoformat = "true"

vim.opt.swapfile = false
vim.opt.relativenumber = false

-- fold options
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

-- git blame configuration
vim.g.gitblame_message_template = "  <author>, <date> • <summary>"
vim.g.gitblame_date_format = "%r"
