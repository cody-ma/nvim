return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  opts = function()
    local logo = [[ 
      ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
      ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
      ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
      ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
      ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
      ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
    ]]
    logo = string.rep("\n", 8) .. logo .. "\n\n"
    local opts = {
      theme = "doom",
      hide = {
        -- this is taken care of by lualine
        -- enabling this messes up the actual laststatus setting after loading a file
        statusline = false,
      },

      config = {
        header = vim.split(logo, "\n"),
        -- stylua: ignore
        center = {
          { action = "Telescope find_files", icon = "  ",  desc = "Open File",    key = "o" },
          { action = "Telescope oldfiles",   icon = "  ",  desc = "Recent Files", key = "r" },
          { action = "Telescope live_grep",  icon = "  ",  desc = "Find Text",    key = "f" },
          { action = "LazyExtras",           icon = "  ",  desc = "Lazy Extras",  key = "e" },
          { action = "Lazy",                 icon = "󰒲  ",  desc = "Lazy Panel",   key = "l" },
          { action = "qa",                   icon = "  ",  desc = "Quit",         key = "q" },
        },
        footer = function()
          return { "" }
        end,
      },
    }

    for _, button in ipairs(opts.config.center) do
      button.desc = button.desc .. string.rep(" ", 55 - #button.desc)
      button.key_format = "      %s"
    end

    return opts
  end,
}
