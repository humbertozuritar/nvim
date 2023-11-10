return {
    {
        -- DESC: Simple UI for vim-dadbod, It allows simple navigation through databases and allows saving queries for later use
        "kristijanhusak/vim-dadbod-ui",
        dependencies = {
            -- DESC: dadbod.vim: Modern database interface for Vim
            "tpope/vim-dadbod",
            {
                -- DESC: Database autocompletion powered by 'vim-dadbod
                "kristijanhusak/vim-dadbod-completion",
                --ft = {
                --    "sql",
                --    "mysql",
                --    "plsql"
                --},
            },
        },
        init = function()
            vim.g.db_ui_use_nerd_fonts = 1
            vim.g.db_ui_show_database_icon = 1
            vim.g.db_ui_force_echo_notifications = 1
            --vim.g.db_ui_win_position = "left"
            --vim.g.db_ui_winwidth = 80

            vim.g.db_ui_table_helpers = {
                postgresql = {
                    List = "select * from {table} order by id asc",
                },
                sqlserver = {
                    MyTables = "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE'",
                    Vertion = "SELECT @@VERSION",
                },
                mysql = {
                    Count = "SELECT COUNT(1) FROM {optional_schema}{table}",
                    Explain = "EXPLAIN {last_query}",
                },
            }

            vim.g.db_ui_icons = {
                expanded = {
                    db = "▾ ",
                    buffers = "▾ ",
                    saved_queries = "▾ ",
                    schemas = "▾ ",
                    schema = "▾ פּ",
                    tables = "▾ 藺",
                    table = "▾ ",
                },
                collapsed = {
                    db = "▸ ",
                    buffers = "▸ ",
                    saved_queries = "▸ ",
                    schemas = "▸ ",
                    schema = "▸ פּ",
                    tables = "▸ 藺",
                    table = "▸ ",
                },
                saved_query = "",
                new_query = "璘",
                tables = "離",
                buffers = "﬘",
                add_connection = "",
                connection_ok = "✓",
                connection_error = "✕",
            }

            -- NOTE: Syntax for add databases, exist 2 forms:
            -- NameOnDBUI = "Adapter://host:port;user=UserName;password=UserPassword;trustServerCertificate=yes;database=DBName"
            -- NameOnDBUI = "Adapter://UserName:UserPassword@host:port/DBName"
            vim.g.dbs = {
                mysql = "mysql://root:Password@localhost:3306/mysql",
                EstructuraDatos = "mysql://root:Password@172.17.0.3:3306/mysql",
                GeSin = "mysql://root:Password@172.17.0.3:3306/gesin",
            }
        end,
        --cmd = {
        --    "DBUI",
        --    "DBUIToggle",
        --},
        keys = {
            {"<space>db", "<cmd>tab DBUI<cr>"},
            {"<space>dt", "<cmd>DBUIToggleDBUIToggle<cr>"},
        },
    },
}
