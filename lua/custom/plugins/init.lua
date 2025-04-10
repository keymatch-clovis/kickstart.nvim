-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
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
