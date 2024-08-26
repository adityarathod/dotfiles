-- globals.lua: misc global settings

-- System-wide options
vim.opt.clipboard = 'unnamedplus'
vim.opt.termguicolors = true
vim.opt.mouse = 'a'

-- Keybind settings
vim.g.mapleader = ' '

-- Buffer-specific options
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.autoindent = true
vim.opt.shiftwidth = 4

-- Window-specific options
vim.opt.number = true
vim.opt.numberwidth = 5

-- Editing options
vim.opt.list = true
vim.opt.ignorecase = false
vim.opt.hlsearch = false
vim.opt.inccommand = 'nosplit'
vim.opt.cursorline = true
vim.opt.showmatch = true

-- Completion options
vim.opt.wildmenu = true

-- Split options
vim.opt.splitright = true
vim.opt.splitbelow = true

-- modelines are cool! :help modeline for more :D
-- vim: ts=2 sts=2 sw=2 tw=80 et

