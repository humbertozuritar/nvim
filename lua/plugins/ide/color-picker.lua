return {
    -- DESC: A powerful Neovim plugin that lets users choose & modify RGB/HSL/HEX colors.
    "ziontee113/color-picker.nvim",
    event = "VeryLazy",
    config = function()
        local picker = require('color-picker')
        picker.setup({
            -- DESC: for changing icons & mappings
            -- ["icons"] = { "ﱢ", "" },
            -- ["icons"] = { "ﮊ", "" },
            -- ["icons"] = { "", "ﰕ" },
            -- ["icons"] = { "", "" },
            -- ["icons"] = { "", "" },
            ["icons"] = { "ﱢ", "" },
            ["border"] = "rounded", -- NOTE: none | single | double | rounded | solid | shadow
            ["keymap"] = { -- mapping example:
                ["U"] = "<Plug>ColorPickerSlider5Decrease",
                ["O"] = "<Plug>ColorPickerSlider5Increase",
            },
            ["background_highlight_group"] = "Normal",      -- NOTE: default
            ["border_highlight_group"] = "FloatBorder",     -- NOTE: default
            ["text_highlight_group"] = "Normal",            -- NOTE: default
            --vim.cmd([[hi FloatBorder guibg=NONE]]) -- if you don't want weird border background colors around the popup.
        })
    end,
    cmd = {
        "PickColor",
        "PickColorInsert",
    },
}
