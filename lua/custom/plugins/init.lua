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
        config = function()
            require('oil').setup()
            vim.keymap.set(
                'n',
                '<leader>O',
                '<CMD>Oil<CR>',
                { desc = '[O]pen parent directory' }
            )
        end,
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
