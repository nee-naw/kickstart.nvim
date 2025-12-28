-- Display a character as the vertical column
-- https://github.com/lukas-reineke/virt-column.nvim/

return {
  {
    'lukas-reineke/virt-column.nvim',
    opts = { enabled = true },
    config = function()
      require('virt-column').setup()
    end,
  },
}
