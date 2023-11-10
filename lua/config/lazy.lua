-- _                              _           
--| | __ _ _____   _   _ ____   _(_)_ __ ___  
--| |/ _` |_  / | | | | '_ \ \ / / | '_ ` _ \ 
--| | (_| |/ /| |_| |_| | | \ V /| | | | | | |
--|_|\__,_/___|\__, (_)_| |_|\_/ |_|_| |_| |_|
--             |___/                          

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup{
  spec = {
    { import = "plugins.lsp" },
    { import = "plugins" },
    { import = "plugins.ide" },
  },
  install = { colorscheme = { "gruvbox-material", "tokyonight" } },
}
