return {
    {
        -- DESC: A completion engine plugin for neovim written in Lua. Completion sources are 
        --       installed from external repositories and "sourced".
        'hrsh7th/nvim-cmp',
        event = 'InsertEnter',
        dependencies = {
            -- AI Tools
            --{
                --'tzachar/cmp-ai',               -- DESC: 
                --dependencies = { 'nvim-lua/plenary.nvim' }
            --},
            {
                "zbirenbaum/copilot-cmp",       -- DESC: 
                dependencies = { 'zbirenbaum/copilot.lua' },
                --config = function ()
                    --require("copilot_cmp").setup()
                --end
            },
            'hrsh7th/cmp-nvim-lsp',             -- DESC: Source for LSP client
            'hrsh7th/cmp-buffer',               -- DESC: Source for text in buffer
            'hrsh7th/cmp-path',                 -- DESC: Source for file system paths
            'saadparwaiz1/cmp_luasnip',         -- DESC: For autocompletion
            'rafamadriz/friendly-snippets',     -- DESC: Useful snippets
            'onsails/lspkind.nvim',             -- DESC: vs-code like pictograms
            'f3fora/cmp-spell',                 -- DESC: Source for spell based on vim's spellsuggest
            --'hrsh7th/cmp-cmdline',              -- DESC: Source for vim's cmdline
            'hrsh7th/cmp-emoji',                -- DESC: Source for emoji
        },
        config = function()
            -- DESC: Here is where you configure the autocompletion settings.
            -- NOTE: The arguments for .extend() have the same shape as `manage_nvim_cmp`: 
            -- https://github.com/VonHeikemen/lsp-zero.nvim/blob/v2.x/doc/md/api-reference.md#manage_nvim_cmp

            require('lsp-zero.cmp').extend()

            local cmp = require('cmp')
            local cmp_action = require('lsp-zero.cmp').action()
            local snip = require('luasnip')

            -- DESC: Loads vscode style snippets from installed plugins (e.g. friendly-snippets)
            require("luasnip.loaders.from_vscode").lazy_load()

            require("copilot_cmp").setup()

            --local cmp_ai = require('cmp_ai.config')
            --cmp_ai:setup({
                --max_lines = 1000,
                --provider = 'Bard',
                --notify = true,
                --notify_callback = function(msg)
                    --vim.notify(msg)
                --end,
                --run_on_every_keystroke = true,
                --ignored_file_types = {
                    ---- default is not to ignore
                    ---- uncomment to ignore in lua:
                    ---- lua = true
                --},
            --})

            cmp.setup({
                completion = {
                    completeopt = "menu,menuone,preview,noselect",
                },
                snippet = {         -- DESC: Configure how nvim-cmp interacts with snippet engine
                    expand = function(args)
                        snip.lsp_expand(args.body)
                    end,
                },
                mapping = {
                    ["<S-Tab>"] = cmp.mapping.select_prev_item(), -- previous suggestion
                    ["<Tab>"] = cmp.mapping.select_next_item(), -- next suggestion
                    ["<C-h>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-l>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
                    ["<C-e>"] = cmp.mapping.abort(), -- close completion window
                    ["<CR>"] = cmp.mapping.confirm({ select = false }), -- apply selection
                    --['<CR>'] = cmp.mapping.confirm({
                    --    behavior = cmp.ConfirmBehavior.Replace,
                    --    select = false,
                    --}),
                    -- For snippets
                    ['<C-j>'] = cmp_action.luasnip_jump_forward(),
                    ['<C-k>'] = cmp_action.luasnip_jump_backward(),
                },
                sources = cmp.config.sources({      -- DESC: Sources for autocompletion
                    { name = "copilot" },
                    --{ name = 'cmp_ai' },
                    { name = "nvim_lsp" },
                    { name = "luasnip" }, -- snippets
                    { name = "buffer" }, -- text within current buffer
                    { name = "path" }, -- file system paths
                    { name = 'vim-dadbod-completion' }, -- from vim dadbod
                    --{ name = 'cmdline' },
                    { name = 'emoji' },
                }),
                formatting = {      -- DESC: Configure lspkind for vs-code like pictograms in completion menu
                    format = require("lspkind").cmp_format({
                        --mode = 'symbol_text',
                        maxwidth = 50,
                        ellipsis_char = "...",
                    }),
                },
            })
        end,
    },
}
