return {
    {
        -- DESC: Markdown preview plugin for Vim on Terminal
        -- WARN: Required mdr on your system (https://github.com/MichaelMure/mdr)
        "skanehira/preview-markdown.vim",
        cmd = {
            "PreviewMarkdown",
        },
    },
    {
        -- DESC: Markdown preview plugin for (neo)vim on browser
        "iamcco/markdown-preview.nvim",
        build = "cd app && yarn install",
        config = function()
            local v = vim.g
            v.mkdp_refresh_slow = 1
            v.mkdp_browser = "firefox"
            v.mkdp_theme = "dark"
            v.mkdp_markdown_css = "/home/humberto/.config/nvim/gruvbox-dark-medium.css"
        end,
        cmd = {
            "MarkdownPreviewToggle",
        },
    },
    --{
    --    -- FIX: Give error: "no parser for 'markdown' language, see :help treesitter-parsers"
    --    -- DESC: Mark treesitter node to enhance context changes in your buffer.
    --    "atusy/tsnode-marker.nvim",
    --    lazy = true,
    --    init = function()
    --        vim.api.nvim_create_autocmd("FileType", {
    --            group = vim.api.nvim_create_augroup("tsnode-marker-markdown", {}),
    --            pattern = "markdown",
    --            callback = function(ctx)
    --                require("tsnode-marker").set_automark(ctx.buf, {
    --                    target = { "code_fence_content" }, -- list of target node types
    --                    hl_group = "CursorLine", -- highlight group
    --                })
    --            end,
    --        })
    --    end,
    --},
    {
        -- DESC: Plugin to generate table of contents for Markdown files.
        "mzlogin/vim-markdown-toc",
        config = function()
            vim.g.vmt_auto_update_on_save = 1
            vim.g.vmt_dont_insert_fence = 0
            vim.g.vmt_fence_text = "Table Of Contents"
            vim.g.vmt_cycle_list_item_markers = 0
        end,
        ft = {
            "markdown",
            "md",
        },
        cmd = {
            "GenTocGFM",
            "GenTocRedcarpet",
            "GenTocGitLab",
            "GenTocMarked",
            "RemoveToc",
            "UpdateToc",
        },
    },
}
