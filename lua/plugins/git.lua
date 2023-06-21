return {
    {
        -- DESC: A Git wrapper so awesome.
        -- WARN: Require project git was inited
        "tpope/vim-fugitive",
        cmd = {
            "Git",
            "Gedit",
            "Gdiffsplit",
            "Gread",
            "Gwrite",
            "Ggrep",
            "GMove",
            "GDelete",
            "GBrowse",
        },
    },
    {
        -- DESC: A Vim plugin which shows git diff markers in the sign column.
        -- WARN: Require project git was inited
        "airblade/vim-gitgutter",
        cmd = {
            "GitGutterToggle",
            "GitGutterBufferToggle",
            "GitGutterSignsToggle",
            "GitGutterLineHighlightsToggle",
        },
    },
    {
        -- DESC: A fast, beautiful, and powerful git branch viewer for vim.
        "rbong/vim-flog",
        dependencies = {
            "tpope/vim-fugitive",
            -- Extension`s
            -- DESC: Automatically update flog windows
            "TamaMcGlinn/vim-autoflog",
        },
        cmd = {
            "Flog",
            "Flogsplit",
        },
    },
    {   -- FIX: Doesn`t work
        -- DESC: vim quickui menu for fugitive and flog commands
        "TamaMcGlinn/flog-menu",
        dependencies = {
            "tpope/vim-fugitive",
            "rbong/vim-flog",
            "skywind3000/vim-quickui",
            --Extension`s
            --"TamaMcGlinn/flog-teamjump",
        },
        keys = {
            {"<Space>gui", "<cmd>call flogmenu#open_all_windows()<CR>"},
        },
    },
    {
        "sindrets/diffview.nvim", -- Single tabpage interface for cycling through diffs for all modified files.
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        cmd = {
            "DiffviewOpen",
        },
    },
    {
        "aaronhallaert/advanced-git-search.nvim",   -- Search your git history, content and author in Neovim
        dependencies = {
            "tpope/vim-fugitive",
            "nvim-telescope/telescope.nvim",
            "sindrets/diffview.nvim",
        },
        keys = {
            {"<Space>gs", "<cmd>AdvancedGitSearch<cr>"},
        },
        config = function()
            require('telescope').extensions.advanced_git_search()
        end,
    },
    {
        "TamaMcGlinn/vim-gitremotes",   -- Vim plugin for managing git remotes
        dependencies = {
            "tpope/vim-fugitive",
            "junegunn/fzf",
        },
        cmd = {
            "GRemotesList",
            "GRemoteAdd",
            "GRemoteEdit",
        },
    },
    {-- No funciona
        "TamaMcGlinn/vim-twiggy",       -- Git branch management for Vim
        dependencies = {
            "tpope/vim-fugitive",
        },
        cmd = {
            "Twiggy",
        },
    },
    -- GitHub
    {
        "junegunn/vim-github-dashboard",    -- Browse GitHub events in Vim
        cmd = {
            "GHA",
            "GHDashboard",
            "GHActivity",
        },
    },
}
