-- Lualine statusline
-- https://github.com/nvim-lualine/lualine.nvim

return { -- Lualine
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    -- Custom Lualine Theme
    local custom_horizon = require 'lualine.themes.horizon'

    -- Change background to transparent
    custom_horizon.normal.c.bg = 'None'
    custom_horizon.insert.c.bg = 'None'
    custom_horizon.visual.c.bg = 'None'
    custom_horizon.command.c.bg = 'None'
    custom_horizon.replace.c.bg = 'None'
    custom_horizon.inactive.c.bg = 'None'

    -- Config Options
    require('lualine').setup {
      options = {
        theme = 'auto',
        transparent = true,
      },
    }
  end,
}
