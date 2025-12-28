-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    -- Render Markdown
    require 'MeanderingProgrammer/render-markdown.nvim',
    config = function()
      require 'render-markdown'
    end,
  },
}
