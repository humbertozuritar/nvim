--                             _             
-- _ __ ___   __ _ _ __  ___  | |_   _  __ _ 
--| '_ ` _ \ / _` | '_ \/ __| | | | | |/ _` |
--| | | | | | (_| | |_) \__ \_| | |_| | (_| |
--|_| |_| |_|\__,_| .__/|___(_)_|\__,_|\__,_|
--                |_|                        

-- General
vim.api.nvim_set_keymap('n', '<Space>w', '<cmd>w<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Space>W', '<cmd>w!<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Space>q', '<cmd>q<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Space>Q', '<cmd>q!<cr>', { noremap = true })

vim.api.nvim_set_keymap('i', 'ii', '<Esc>', {})
vim.api.nvim_set_keymap('v', 'ii', '<Esc>', {})
vim.api.nvim_set_keymap('c', 'ii', '<Esc>', {})

vim.api.nvim_set_keymap('i', '<A-h>', '<C-e>', {})
vim.api.nvim_set_keymap('i', '<A-j>', '<C-n>', {})
vim.api.nvim_set_keymap('i', '<A-k>', '<C-p>', {})
vim.api.nvim_set_keymap('i', '<A-l>', '<C-y>', {})
vim.api.nvim_set_keymap('i', '<A-c>', '<C-c>', {})

vim.api.nvim_set_keymap('c', '<A-h>', '<C-e>', {})
vim.api.nvim_set_keymap('c', '<A-j>', '<C-n>', {})
vim.api.nvim_set_keymap('c', '<A-k>', '<C-p>', {})
vim.api.nvim_set_keymap('c', '<A-l>', '<C-y>', {})
vim.api.nvim_set_keymap('c', '<A-c>', '<C-c>', {})

-- Terminal
vim.api.nvim_set_keymap('n', '<space>tv', '<Esc>:rightbelow sfind term://zsh<Enter>', { noremap = true })
vim.api.nvim_set_keymap('n', '<space>th', '<Esc>:vertical rightbelow sfind term://zsh<Enter>', { noremap = true })

vim.api.nvim_set_keymap('n', '<Leader>cmd', '!!$SHELL<Enter>', { noremap = true })

-- Navegar con guias
vim.api.nvim_set_keymap('i', ';gui', '<++>', {})
vim.api.nvim_set_keymap('i', '<leader><leader>', '<Esc>/<++><Enter>"_c4l', {})
vim.api.nvim_set_keymap('v', '<leader><leader>', '<Esc>/<++><Enter>"_c4l', {})
vim.api.nvim_set_keymap('n', '<leader><leader>', '<Esc>/<++><Enter>"_c4l', {})

-- Mueve bloques de código en modo visual o V-Line
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', { noremap = true })
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', { noremap = true })
vim.api.nvim_set_keymap('x', 'K', ':move \'<-2<CR>gv-gv', { noremap = true })
vim.api.nvim_set_keymap('x', 'J', ':move \'>+1<CR>gv-gv', { noremap = true })

-- Buffers
vim.api.nvim_set_keymap('n', '<Space>h', ':bprev<Enter>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Space>l', ':bnext<Enter>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Space>bn', ':new<Enter>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Space>bd', ':bd<Enter>', { noremap = true })

-- Splits
--vim.api.nvim_set_keymap('n', '<A-w>', '<C-w>', {})
--vim.api.nvim_set_keymap('n', '<A-w>y', ':vertical resize +3<cr>', { noremap = true })
--vim.api.nvim_set_keymap('n', '<A-w>o', ':vertical resize -3<cr>', { noremap = true })
--vim.api.nvim_set_keymap('n', '<A-w>i', ':resize +3<cr>', { noremap = true })
--vim.api.nvim_set_keymap('n', '<A-w>u', ':resize -3<cr>', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>th', '<C-w>t<C-w>H', {})  -- Cambiar Split a horizontal
vim.api.nvim_set_keymap('n', '<leader>tk', '<C-w>t<C-w>K', {})  -- Cambiar Split a vertical

-- Pestañas (Tabs)
vim.api.nvim_set_keymap('n', '<Space>tp', ':tabprevious<Enter>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Space>tn', ':tabNext<Enter>', { noremap = true })
vim.api.nvim_set_keymap('n', '<Space>tc', ':tabclose<Enter>', { noremap = true })

-- Clipboard
-- yank
vim.api.nvim_set_keymap('n', 'yy', '"+yy', { noremap = true })
vim.api.nvim_set_keymap('v', 'y', '"+y', { noremap = true })
-- delete
vim.api.nvim_set_keymap('n', 'dd', '"+dd', { noremap = true })
vim.api.nvim_set_keymap('v', 'd', '"+d', { noremap = true })
-- paste
vim.api.nvim_set_keymap('n', 'p', '"+p', { noremap = true })
vim.api.nvim_set_keymap('v', 'p', '"+p', { noremap = true })
