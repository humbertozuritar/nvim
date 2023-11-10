return {
    {
        -- DESC: Is a highly extendable fuzzy finder over lists. Built on the latest
        --       awesome features from neovim core. Telescope is centered around
        --       modularity, allowing for easy customization.
        -- TODO: Write the requirements
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        dependencies = {
            -- DESC: All the lua functions I don't want to write twice.
            'nvim-lua/plenary.nvim'
        },
        cmd = "Telescope",
        keys = {
            --{ "<Space>fs", ":Telescope find_files<cr>", desc = "Open find files on Telescope"},
            --{ "<Space>fb", ":Telescope buffers<cr>", desc = "Open list of buffers on Telescope"},
            { "<Space>fh", ":Telescope oldfiles<cr>", desc = "Open history of files openned on Telescope"},
            { "<Space>ft", ":Telescope help_tags<cr>", desc = "Open list of tags on Telescope"},
            { "<Space>ts", ":Telescope spell_suggest<cr>", desc = "Open list of sugggest word on Telescope"},
            { "<Space>tr", ":Telescope registers<cr>", desc = "Open registers on Telescope"},
            { "<Space>tl", ":Telescope live_grep<cr>", desc = "Find on all files on Telescope on workspace"},
            { "<Space>tb", ":Telescope buffers<cr>", desc = "Find all buffers on Telescope on workspace"},
        },
    },
}
