-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '<leader>e', ':Neotree reveal right toggle<CR>', desc = 'NeoTree reveal', silent = true },
    { '<leader>b', ':Neotree toggle show buffers right<CR>', desc = 'NeoTree show buffers', silent = true },
    { '<leader>g', ':Neotree toggle show git_status left<CR>', desc = 'NeoTree show git status', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        -- mappings = {
        --   ['<leader>e'] = 'close_window',
        -- },
      },
    },
    event_handlers = {
      {
        event = 'file_opened',
        handler = function()
          vim.cmd ':Neotree close'
        end,
      },
    },
  },
}
