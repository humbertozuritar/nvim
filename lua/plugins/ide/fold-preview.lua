return {
    'anuvyklack/fold-preview.nvim',
    --enabled = false,
    --requires = {
        --"anuvyklack/keymap-amend.nvim",
    --},
    config = function()
        --require('fold-preview').setup()
         --require('keymap-amend').setup()
        --local fp = require('fold-preview')
        --local map = require('fold-preview').mapping
        --local keymap = vim.keymap
        --keymap.amend = require('keymap-amend')

        --fp.setup({ 
            --default_keybindings = false
            ---- another settings
        --})

        --keymap.amend('n', 'K', function(original)
            --if not fp.show_preview() then original() end
            ---- or
            ---- if not fp.toggle_preview() then original() end
            ---- to close preview on second press on K.
        --end)
        --keymap.amend('n', 'h',  map.close_preview_open_fold)
        --keymap.amend('n', 'l',  map.close_preview_open_fold)
        --keymap.amend('n', 'zo', map.close_preview)
        --keymap.amend('n', 'zO', map.close_preview)
        --keymap.amend('n', 'zc', map.close_preview_without_defer)
        --keymap.amend('n', 'zR', map.close_preview)
        --keymap.amend('n', 'zM', map.close_preview_without_defer)
    end,
    --keys = {
        --{ mode = "n", "<leader>fp", "lua require('fold-preview').toggle_preview" }
    --}
}
