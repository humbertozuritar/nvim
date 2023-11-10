return {
    {
        -- DESC: bundle all the "boilerplate code" necessary to have nvim-cmp (a popular
        --       autocompletion plugin) and nvim-lspconfig working together
        "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        lazy = true,
        config = function()
            -- NOTE: This is where you modify the settings for lsp-zero
            -- WARN: autocompletion settings will not take effect
            require("lsp-zero.settings").preset({})
        end,
    },
    -- LSP
    {
        -- DESC: Quickstart configs for Nvim LSP
        "neovim/nvim-lspconfig",
        cmd = "LspInfo",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            -- DESC: Extension to mason.nvim that makes it easier to use lspconfig with mason.nvim.
            { "williamboman/mason-lspconfig.nvim" },
            {
                -- DESC: Portable package manager for Neovim that runs everywhere Neovim runs. Easily
                --       install and manage LSP servers, DAP servers, linters, and formatters.
                -- WARN: Required the next package system: git, curl, wget, unzip, tag, gzip
                "williamboman/mason.nvim",
                build = function()
                    pcall(vim.cmd, "MasonUpdate")
                end,
            },
        },
        config = function()
            local lsp = require("lsp-zero")

            lsp.on_attach(function(client, bufnr)
                lsp.default_keymaps({ buffer = bufnr })
            end)

            lsp.setup()
        end,
    },
    --{
    ---- DESC: Standalone UI for nvim-lsp progress.
    --"j-hui/fidget.nvim",
    --tag = 'legacy',
    ----lazy = false,
    --event = "LspAttach",
    ----init = function()
    ------require"lspconfig".setup()
    ------require'lspconfig'.haskel.setup{}
    ----require("fidget").setup()
    ----end
    --},
    {
        -- DESC: A pretty list for showing diagnostics, references, telescope results,
        --       quickfix and location lists to help you solve all the trouble your code is causing.
        "folke/trouble.nvim",
        enabled = false,
        -- DESC: opts will be merged with the parent spec
        opts = {
            icons = true,
            signs = {
                -- icons / text used for a diagnostic
                error = "",
                warning = "",
                hint = "",
                information = "",
                other = "",
            },
            use_diagnostic_signs = true,
        },
    },
    {
        "SmiteshP/nvim-navbuddy",
        dependencies = {
            "SmiteshP/nvim-navic",
            "MunifTanjim/nui.nvim",
        },
        opts = { lsp = { auto_attach = true } },
    },
    {
        -- DESC: renders diagnostics using virtual lines on top of the real line of code.
        "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
        config = function()
            require("lsp_lines").setup()
        end,
    },
    {
        -- DESC:Neovim plugin for displaying reference and definition info upon functions like JB's IDEA.
        "VidocqH/lsp-lens.nvim",
        opts = {
            enable = true,
            include_declaration = false, -- Reference include declaration
            sections = {
                definition = function(count)
                    return "Definiciones: " .. count
                end,
                references = function(count)
                    return "Referencias: " .. count
                end,
                implements = function(count)
                    return "Implementaciones: " .. count
                end,
                git_authors = function(latest_author, count)
                    return " " .. latest_author .. (count - 1 == 0 and "" or (" + " .. count - 1))
                end,
            },
            --ignore_filetype = {
            --"prisma",
            --},
        },
        keys = {
            { mode = "n", "<Space>ll", "<cmd>LspLensToggle<cr>", desc = "Toggle display definition" },
        },
    },
    {
        -- DESC:Fully customizable previewer for LSP code actions.
        "aznhe21/actions-preview.nvim",
        opts = {
            backend = { "telescope", "nui" },

            -- options related to telescope.nvim
            telescope = {
                sorting_strategy = "ascending",
                layout_strategy = "vertical",
                layout_config = {
                    width = 0.8,
                    height = 0.95,
                    --prompt_position = "top",
                    preview_cutoff = 20,
                    preview_height = function(_, _, max_lines)
                        return max_lines - 15
                    end,
                },
            },
        },
        keys = {
            {
                mode = { "n", "v" },
                "<leader>gf",
                ":lua require('actions-preview').code_actions()<cr>",
                desc = "Preview LSP code actions",
            },
        },
    },
    {
        -- DESC: Show lsp diagnostics based on mouse position
        "soulis-1256/hoverhints.nvim",
        config = function()
            require("hoverhints")
        end,
    },
}
