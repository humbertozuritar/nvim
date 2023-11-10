return {
    -- DESC: This plugin adds indentation guides to all lines (including empty lines).
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
        local highlight = {
            "RainbowRed",
            "RainbowYellow",
            "RainbowBlue",
            "RainbowOrange",
            "RainbowGreen",
            "RainbowViolet",
            "RainbowCyan",
        }

        local hooks = require "ibl.hooks"
        hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
            vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#CC241D" })
            vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#D79921" })
            vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#458588" })
            vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D65D0E" })
            vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98971A" })
            vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#B16286" })
            vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#8EC07C" })
        end)

        require("ibl").setup { indent = { highlight = highlight } }
    end
    --config = function()
        --vim.opt.termguicolors = true
        ---- Gruvbox colors
        --vim.cmd [[highlight IndentBlanklineIndent1 guifg=#CC241D gui=nocombine]]
        --vim.cmd [[highlight IndentBlanklineIndent2 guifg=#D79921 gui=nocombine]]
        --vim.cmd [[highlight IndentBlanklineIndent3 guifg=#8EC07C gui=nocombine]]
        --vim.cmd [[highlight IndentBlanklineIndent4 guifg=#83A598 gui=nocombine]]
        --vim.cmd [[highlight IndentBlanklineIndent5 guifg=#458588 gui=nocombine]]
        --vim.cmd [[highlight IndentBlanklineIndent6 guifg=#B16286 gui=nocombine]]

        --vim.opt.list = true
        --vim.opt.listchars:append "space:⋅"
        --vim.opt.listchars:append "eol:↴"

        --require("indent_blankline").setup {
            --space_char_blankline = " ",
            --char_highlight_list = {
                --"IndentBlanklineIndent1",
                --"IndentBlanklineIndent2",
                --"IndentBlanklineIndent3",
                --"IndentBlanklineIndent4",
                --"IndentBlanklineIndent5",
                --"IndentBlanklineIndent6",
            --},
        --}
    --end
}
