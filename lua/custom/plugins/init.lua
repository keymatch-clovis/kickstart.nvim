-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'stevearc/oil.nvim',
    opts = {
      experimental_watch_for_changes = true,
    },
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
  {
    'kylechui/nvim-surround',
    version = '*', -- Use for stability; omit to use `main` branch for the latest features
    event = 'VeryLazy',
    config = function()
      require('nvim-surround').setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
}
