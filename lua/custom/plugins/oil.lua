return {
  {
    'stevearc/oil.nvim',
    opts = {
      experimental_watch_for_changes = true,
    },
    -- Optional dependencies
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('oil').setup()
      vim.keymap.set(
        'n',
        '<leader>O',
        '<CMD>Oil<CR>',
        { desc = '[O]pen parent directory' }
      )

      vim.api.nvim_create_autocmd('User', {
        pattern = 'OilActionsPost',
        callback = function(event)
          if event.data.actions.type == 'move' then
            Snacks.rename.on_rename_file(
              event.data.actions.src_url,
              event.data.actions.dest_url
            )
          end
        end,
      })
    end,
  },
}
