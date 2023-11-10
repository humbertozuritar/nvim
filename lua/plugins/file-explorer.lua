return {
    {
        -- DESC: Vim plugin that allows use of vifm as a file picker.
        -- WARN: Require vifm installed on sistem
        "vifm/vifm.vim",                -- Integración con vifm
        lazy = false,
        keys = {
            { "<Space>ff", mode = "n", "<cmd>Vifm<cr>", desc = "Open vifm file manager on vim"}
        },
    },
    {
        -- DESC: A file explorer tree for neovim written in lua
        "nvim-tree/nvim-tree.lua",
        dependencies = {
            -- DESC: lua `fork` of vim-web-devicons for neovim
            'nvim-tree/nvim-web-devicons'
        },
        config = function()
            --vim.opt.termguicolors = true

            local nerdtree = require("nvim-tree")

            nerdtree.setup({
                sort_by = "case_sensitive",
                view = {
                    width = 30,
                },
                renderer = {
                    group_empty = true,
                },
                filters = {
                    dotfiles = true,
                },
            })
        end,
        cmd = {
            "NvimTreeToggle",
            "NvimTreeFocus",
            "NvimTreeFindFile",
            "NvimTreeCollapse",
        },
        keys = {
            {"<Space>ntt", mode = "n", "<cmd>NvimTreeToggle<cr>", desc = "Open and Close NvimTree"},
            {"<Space>ntf", mode = "n", "<cmd>NvimTreeFocus<cr>", desc = "Open NvimTree focused on file"},
            --{"<Space>ntc", mode = "n", "<cmd>NvimTreeCollapse<cr>", desc = "Collapse all folders"},
            {"<Space>ntk", mode = "n", "<cmd>NvimTreeCollapseKeepBuffers<cr>", desc = "Collapse keep folders"},
        },
    },
    {
        -- DESC: File browser extension for telescope.nvim. It supports synchronized creation, deletion,
        --       renaming, and moving of files and folders
        "nvim-telescope/telescope-file-browser.nvim",
        dependencies = {
            -- DESC: Is a highly extendable fuzzy finder over lists. Built on the latest
            --       awesome features from neovim core. Telescope is centered around
            --       modularity, allowing for easy customization.
            "nvim-telescope/telescope.nvim",
            -- DESC: All the lua functions I don't want to write twice.
            "nvim-lua/plenary.nvim"
        },
        opts = {
            extensions = {
                file_browser = {
                    theme = "gruvbox",
                },
            },
        },
        config = function()
            require("telescope").load_extension "file_browser"
        end,
        keys = {
            {"<Space>fs", mode = "n", "<cmd>Telescope file_browser<cr>"},
            {"<Space>fb", mode = "n", "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>"},
        },
    },
}
