return {
    {
        -- DESC: Draw ASCII diagrams in Neovim
        "jbyuki/venn.nvim",
        config = function()
-- NOTE: cant use tabs or Space`s because this show in menu
local hint = [[
 Arrow^^^^^^   Select region with <C-v> 
 ^ ^ _K_ ^ ^   _f_: surround it with box
 _H_ ^ ^ _L_
 ^ ^ _J_ ^ ^                      _<Esc>_
]]
            local Hydra = require('hydra')
            Hydra({
                name = 'Draw Diagram',
                hint = hint,
                config = {
                    color = 'pink',
                    invoke_on_body = true,
                    hint = {
                        border = 'rounded'
                    },
                    on_enter = function()
                        vim.o.virtualedit = 'all'
                    end,
                },
                mode = 'n',
                body = '<leader>md',
                heads = {
                    { 'H', '<C-v>h:VBox<CR>' },
                    { 'J', '<C-v>j:VBox<CR>' },
                    { 'K', '<C-v>k:VBox<CR>' },
                    { 'L', '<C-v>l:VBox<CR>' },
                    { 'f', ':VBox<CR>', { mode = 'v' }},
                    { '<Esc>', nil, { exit = true } },
                }
            })
        end,
        keys = {
            {"<leader>md", mode = "n", desc = "SubMode for drawing diagrams"},
        },
    },
}
