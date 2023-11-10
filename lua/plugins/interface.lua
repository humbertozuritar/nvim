return {
    {
        -- DESC: Retro groove color scheme for Vim
        --"morhetz/gruvbox",
        "sainnhe/gruvbox-material",
        config = function()
            --vim.cmd [[colorscheme gruvbox-material]]
            vim.g.gruvbox_material_background = 'medium'
            vim.g.gruvbox_material_foreground = 'mix'
        end
    },
    {
        -- DESC: Calling lazy for setup colorscheme
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "gruvbox-material",
        },
    },
    {
        -- DESC: lua `fork` of vim-web-devicons for neovim
        "nvim-tree/nvim-web-devicons",
        lazy = true,
        opts = {
            default = true,
            colors = {
                default = "gruvbox-material",
            },
        },
    },
    --{
        --"vim-airline/vim-airline",
        --enabled = false,
        --lazy = false,
        --priority = 1000,
        --dependencies = {
            --"vim-airline/vim-airline-themes",
        --},
        --init = function()
            --vim.g.airline_powerline_fonts = "1"
        --end,
        --config = function()
            --vim.cmd([[let g:airline#extensions#tabline#enabled = 1]])
            --vim.cmd([[let g:airline#extensions#tabline#formatter = 'unique_tail']])
            --vim.g.airline_theme='gruvbox'
            --vim.g.gruvbox_contrast='soft'
            --vim.g.gruvbox_transparent_bg='1'
        --end,
    --},
    {
        -- DESC: A blazing fast and easy to configure neovim statusline plugin written in pure lua.
        "nvim-lualine/lualine.nvim",
        --enabled = false,
        dependencies = {
            'nvim-tree/nvim-web-devicons',      -- DESC: lua `fork` of vim-web-devicons for neovim
            'nvim-lua/lsp-status.nvim',
            'arkav/lualine-lsp-progress',       -- DESC: LSP Progress lualine componenet
        },
        init = function()
            function Spelllang_status()
                if vim.o.spell then  -- verifica si el corrector ortográfico está activado
                    return 'SPELL [' .. string.upper(vim.bo.spelllang) .. ']'
                else
                    return ''
                end
            end
        end,
        config = function()
            require('lspconfig')
            --local lsp_status = require'lsp-status'
            --lsp_status.config({
                --indicator_errors = 'E',
                --indicator_warnings = 'W',
                --indicator_info = 'i',
                --indicator_hint = '?',
                --indicator_ok = 'Ok',
            --})
            require('lualine').setup({
                enable = true,
                options = { theme = 'gruvbox' },
                sections = {
                    lualine_a = {
                        'mode',
                        "require('hydra.statusline').get_name()",
                        Spelllang_status,
                    },
                    lualine_b = {
                        "require'lsp-status'.status()",
                        --'diff',
                    },
                    lualine_c = {
                        --{'filename',name = false, path = 1, shorting_target = 40},
                        --"os.date('%a')",
                        'windows',
                        --"data",
                        'lsp_progress',
                    },
                    --
                    lualine_x = {
                        --'filesize',
                        'encoding',
                        'fileformat',
                        'filetype',
                    },
                    lualine_y = {
                        'diagnostics',
                        'branch',
                    },
                    lualine_z = {
                        --'location',
                        'progress',
                    }
                },
            })
        end,
    },
    {
        -- DESC: A "buffer and tab" tabline for neovim
        "kdheepak/tabline.nvim",
        --enabled = false,
        dependencies = {
            -- DESC: A blazing fast and easy to configure neovim statusline plugin written in pure lua.
            "nvim-lualine/lualine.nvim",
            -- DESC: lua `fork` of vim-web-devicons for neovim
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require'tabline'.setup{
                enable = true,
                options = {
                    show_bufnr = true,
                    show_filename_only = true,
                    modified_icon = "+ ",
                    modified_italic = false,
                },
            }
        end,
    },
    {
        -- DESC: Floating statuslines for Neovim
        "b0o/incline.nvim",
        enabled = false,
        event = "VeryLazy",
        --event = "BufReadPre",
        config = function()
            --local colors = require("tokyonight.colors").setup()
            --local colors = "gruvbox"
            require("incline").setup({
                --highlight = {
                --    groups = {
                --        wInclineNormal = { guibg = "#FC56B1", guifg = colors.black },
                --        wInclineNormalNC = { guifg = "#FC56B1", guibg = colors.black },
                --    },
                --},
                --window = { margin = { vertical = 0, horizontal = 1 } },
                --render = function(props)
                --    local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
                --    local icon, color = require("nvim-web-devicons").get_icon_color(filename)
                --    return { { icon, guifg = color }, { " " }, { filename } }
                --end,
                debounce_threshold = {
                  falling = 50,
                  rising = 10
                },
                hide = {
                  cursorline = false,
                  focused_win = false,
                  only_win = false
                },
                highlight = {
                  groups = {
                    InclineNormal = {
                      default = true,
                      group = "NormalFloat"
                    },
                    InclineNormalNC = {
                      default = true,
                      group = "NormalFloat"
                    }
                  }
                },
                ignore = {
                  buftypes = "special",
                  filetypes = {},
                  floating_wins = true,
                  unlisted_buffers = true,
                  wintypes = "special"
                },
                render = "basic",
                window = {
                  margin = {
                    horizontal = 1,
                    vertical = 1
                  },
                  options = {
                    signcolumn = "no",
                    wrap = false
                  },
                  padding = 1,
                  padding_char = " ",
                  placement = {
                    horizontal = "right",
                    vertical = "top"
                  },
                  width = "fit",
                  winhighlight = {
                    active = {
                      EndOfBuffer = "None",
                      Normal = "InclineNormal",
                      Search = "None"
                    },
                    inactive = {
                      EndOfBuffer = "None",
                      Normal = "InclineNormalNC",
                      Search = "None"
                    }
                  },
                  zindex = 50
                }
            })
        end,
    },
    {
        -- DESC: Neovim plugin to improve the default vim.ui interfaces
        "stevearc/dressing.nvim",
        event = "VeryLazy",
    },
}
