return {
    {
        -- DESC: Create custom submodes and menus.
        "anuvyklack/hydra.nvim",
        config = function()

            -- ###########################################################
            -- #                    Scroll Mode
            -- ###########################################################
local scrollLegend = [[
 _k_: ↑ Half Scroll     _h_: ↑ Full Scroll
 _j_: ↓ Half Scroll     _l_: ↓ Full Scroll
 ^
 ^ ^        _q_/_<Esc>_: exit
]]
            local modeScroll = require('hydra')
            modeScroll({
                name = 'Scroll',
                hint = scrollLegend,
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
                body = '<leader>ms',
                heads = {
                    { 'k', '<C-u>' },
                    { 'j', '<C-d>' },
                    -- half page
                    { 'h', '<C-b>' },
                    { 'l', '<C-f>' },
                    { 'q', nil, { exit = true } },
                    { '<Esc>', nil, { exit = true } },
               }
            })

            -- ###########################################################
            -- #                    Window Mode
            -- ###########################################################
local windowLegend = [[
 Arrow^^^^^^    _s_: Horizontal split    Rezise^^^^^ 
 ^ ^ _k_ ^ ^    _v_: Vertical split      ^ ^ _K_ ^ ^ 
 _h_ ^ ^ _l_    _x_: Close window        _H_ ^ ^ _L_ 
 ^ ^ _j_ ^ ^    _f_: Fullscreen window   ^ ^ _J_ ^ ^ 
 ^ ^ ^ ^ ^ ^    _o_: Only this
 ^
 ^ ^    _q_/_<Esc>_: exit
]]
            local windowScroll = require('hydra')
            windowScroll({
                name = 'Window',
                hint = windowLegend,
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
                body = '<leader>mw',
                heads = {
                    -- Arrows
                    { 'h', '<C-w>h' },
                    { 'l', '<C-w>l' },
                    { 'j', '<C-w>j' },
                    { 'k', '<C-w>k' },
                    -- Splits
                    { 's', '<cmd>split<cr>' },
                    { 'v', '<cmd>vsplit<cr>' },
                    { 'x', '<cmd>close<cr>' },
                    { 'f', '<C-W>ge' },
                    { 'o', '<cmd>only<cr>' },
                    -- Rezise
                    { 'H', '<C-w><' },
                    { 'L', '<C-w>>' },
                    { 'J', '<cmd>resize -3<cr>' },
                    { 'K', '<cmd>resize +3<cr>' },
                    -- Salir del modo
                    { 'q', nil, { exit = true } },
                    { '<Esc>', nil, { exit = true } },
               }
            })

            -- ###########################################################
            -- #                    Spell Mode
            -- ###########################################################

local spellLegend = [[
 _k_: ↑ Previous bad word   _s_: Spell suggest
 _j_: ↓ Next bad word
 ^
 ^ ^        _q_/_<Esc>_: exit
]]
            local modeSpell = require('hydra')
            local containSpell = modeSpell({
                name = 'Spell',
                hint = spellLegend,
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
                heads = {
                    { 'k', '[s' },
                    { 'j', ']s' },
                    { 's', 'z=' },
                    { 'q', nil, { exit = true } },
                    { '<Esc>', nil, { exit = true } },
               }
            })
            function ActivateSpellHydra()
                containSpell:activate()
            end
        end,
    },
}
