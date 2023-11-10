return {
    ---- DESC: configure formatters & linters
    --'nvimtools/none-ls.nvim',
    --lazy = true,
    ---- event = { "BufReadPre", "BufNewFile" }, -- to enable uncomment this
    --dependencies = {
        --"jay-babu/mason-null-ls.nvim",
    --},
    --config = function()
        ----local mason_null_ls = require("mason-null-ls")
        ----local null_ls = require("null-ls")
        ----local null_ls_utils = require("null-ls.utils")

        ------mason_null_ls.setup({
            ------ensure_installed = {
                ------"prettier", -- prettier formatter
                ------"stylua", -- lua formatter
                ------"black", -- python formatter
                ------"pylint", -- python linter
                ------"eslint_d", -- js linter
            ------},
        ------})
        ------ for conciseness
        ----local formatting = null_ls.builtins.formatting -- to setup formatters
        ----local diagnostics = null_ls.builtins.diagnostics -- to setup linters

        ------ to setup format on save
        ----local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

        --require("mason").setup()
        --require("mason-null-ls").setup()
        --require("null-ls").setup()
    --end
    "jay-babu/mason-null-ls.nvim",
    enabled = false,
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "jose-elias-alvarez/null-ls.nvim",
    },
config = function()
        --require("your.null-ls.config") -- require your null-ls config here (example below)
        require("mason").setup()
        require("mason-null-ls").setup({
            --ensure_installed = { "stylua", "jq" },
            automatic_installation = false,
            handlers = {},
        })
    end,
}
