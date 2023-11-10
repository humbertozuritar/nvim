return {
    {
        -- DESC: Nvim Treesitter configurations and abstraction layer
        "nvim-treesitter/nvim-treesitter",
        config = function()
            local vim = vim
            local opt = vim.opt
            opt.foldmethod = "expr"
            opt.foldexpr = "nvim_treesitter#foldexpr()"

            local vim = vim
            local api = vim.api
            local M = {}
            -- function to create a list of commands and convert them to autocommands
            -------- This function is taken from https://github.com/norcalli/nvim_utils
            function M.nvim_create_augroups(definitions)
                for group_name, definition in pairs(definitions) do
                    api.nvim_command("augroup " .. group_name)
                    api.nvim_command("autocmd!")
                    for _, def in ipairs(definition) do
                        local command = table.concat(vim.tbl_flatten({ "autocmd", def }), " ")
                        api.nvim_command(command)
                    end
                    api.nvim_command("augroup END")
                end
            end
            local autoCommands = {
                -- other autocommands
                open_folds = {
                    { "BufReadPost,FileReadPost", "*", "normal zR" },
                },
            }
            M.nvim_create_augroups(autoCommands)

            require("nvim-treesitter.configs").setup({
                ensure_installed = { "lua", "vimdoc" },
                --sync_install = false,
                auto_install = true,
                --ignore_install = { "javascript" },
                --highlight = {
                --enable = true,
                ----disable = { "c", "rust" },
                ----disable = function(lang, buf)
                ----local max_filesize = 100 * 1024 -- 100 KB
                ----local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                ----if ok and stats and stats.size > max_filesize then
                ----return true
                ----end
                ----end,
                --additional_vim_regex_highlighting = false,
                --},
            })
        end,
    },
    {
        -- DESC: Neovim plugin for splitting/joining blocks of code
        "Wansmer/treesj",
        --event = "VeryLazy",
        --dependencies = {
        ---- DESC: Nvim Treesitter configurations and abstraction layer
        --'nvim-treesitter/nvim-treesitter',
        --},
        config = function()
            local tsj = require("treesj")
            --local langs = {--[[ configuration for languages ]]}

            tsj.setup({
                -- NOTE: Use default keymaps
                --       (<space>m - toggle, <space>j - join, <space>s - split)
                use_default_keymaps = false,
                --
                -- NOTE: Node with syntax error will not be formatted
                check_syntax_error = true,
                --
                -- NOTE: If line after join will be longer than max value,
                --       node will not be formatted
                max_join_length = 120,
                --
                -- NOTE: hold|start|end:
                --       hold - cursor follows the node/place on which it was called
                --       start - cursor jumps to the first symbol of the node being formatted
                --       end - cursor jumps to the last symbol of the node being formatted
                cursor_behavior = "hold",
                --
                notify = true, -- NOTE: Notify about possible problems or not
                --langs = langs,
                --
                dot_repeat = true, -- NOTE: Use `dot` for repeat action
            })
        end,
        keys = {
            -- NOTE: changing keymaps
            { mode = "n", "<leader>tb", "<cmd>TSJToggle<cr>" },
            { mode = "v", "<leader>tb", "<cmd>TSJToggle<cr>" },
        },
    },
    {
        -- DESC: Show code context.
        "nvim-treesitter/nvim-treesitter-context",
        keys = {
            { mode = { "n", "v" }, "<leader>tc", "<cmd>TSContextToggle", desc = "Toggle show code context" },
        },
    },
    --{
    ---- DESC: Syntax aware text-objects, select, move, swap, and peek support.
    --"nvim-treesitter/nvim-treesitter-textobjects",
    --opts = {
    ---- opts
    --},
    --},
}
