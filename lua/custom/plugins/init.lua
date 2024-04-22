-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
  {
    'mbbill/undotree',
    config = function()
      vim.cmd [[ let g:undotree_SetFocusWhenToggle = 1]]
    end,
    keys = {
      {
        '<leader>U',
        function()
          vim.cmd.UndotreeToggle()
        end,
        desc = '[U]ndotree',
      },
    },
  },
}
