return {
{
        -- DESC: Portable package manager for Neovim that runs everywhere Neovim runs. Easily
        --       install and manage LSP servers, DAP servers, linters, and formatters.
        "williamboman/mason.nvim",
    },
    --{
        ---- DESC: Debug Adapter Protocol client implementation for Neovim
        --"mfussenegger/nvim-dap",
    --},
    {
        -- DESC: bridges mason.nvim with the nvim-dap plugin - making it easier to use both plugins together.
        "jay-babu/mason-nvim-dap.nvim",
        dependencies = {
            --"williamboman/mason.nvim",
            "mfussenegger/nvim-dap"     -- DESC: Debug Adapter Protocol client implementation for Neovim
        },
        config = function()
            require("mason").setup()
            --require('dap')

            --require("mason-nvim-dap").setup()
            require("mason-nvim-dap").setup()

        end,
        -- Commands
        -- - DapInstall
        -- - DapUninstall
    },
    {
        -- DESC: A UI for nvim-dap which provides a good out of the box configuration.
        "rcarriga/nvim-dap-ui",
        dependencies = {
            "mfussenegger/nvim-dap"
        },
        config = function()
            --require('codicons').setup()
            require("dapui").setup({
                controls = {
                    element = "repl",
                    enabled = true,
                    icons = {
                        disconnect = "◻",
                        pause = "⏸",
                        play = "▶",
                        run_last = "⭮",
                        step_back = "«",
                        step_into = "↧",
                        step_out = "↥",
                        step_over = "↷",
                        terminate = "☒"
                    }
                },
                element_mappings = {},
                expand_lines = true,
                floating = {
                    border = "single",
                    mappings = {
                        close = { "q", "<Esc>" }
                    }
                },
                force_buffers = true,
                icons = {
                    collapsed = "",
                    current_frame = "",
                    expanded = ""
                },
                layouts = {
                    {
                        elements = {
                            {
                                id = "scopes",
                                size = 0.25
                            }, {
                                id = "breakpoints",
                                size = 0.25
                            }, {
                                id = "stacks",
                                size = 0.25
                            }, {
                                id = "watches",
                                size = 0.25
                            }
                        },
                        position = "left",
                        size = 40
                    }, {
                        elements = {
                            {
                                id = "repl",
                                size = 0.5
                            }, {
                                id = "console",
                                size = 0.5
                            }
                        },
                        position = "bottom",
                        size = 10
                    }
                },
                mappings = {
                    edit = "e",
                    expand = { "<CR>", "<2-LeftMouse>" },
                    open = "o",
                    remove = "d",
                    repl = "r",
                    toggle = "t"
                },
                render = {
                    indent = 1,
                    max_value_lines = 100
                }
            })
            --require("neodev").setup({
                --library = { plugins = { "nvim-dap-ui" }, types = true },
            --})
        end,
        keys = {
            { mode = 'n', '<Space>da', '<cmd>lua require("dapui").toggle()<cr>', desc = 'Open/Close DAP UI' },
        },
    },
    {
        "ldelossa/nvim-dap-projects",
    },
}
