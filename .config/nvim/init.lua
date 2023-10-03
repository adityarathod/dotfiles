-- lazy.nvim bootstrap
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


-- lazy.nvim plugin setup
local plugins = {
    'olimorris/onedarkpro.nvim',
    'andweeb/presence.nvim',
    {
        "kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({})
        end
    }
}

require("lazy").setup(plugins)


-- System-wide options
vim.opt.clipboard = 'unnamedplus'
vim.cmd('colorscheme onedark')
vim.opt.mouse = 'a'


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
vim.opt.hlsearch = true
vim.opt.inccommand = 'nosplit'
vim.opt.cursorline = true
vim.opt.showmatch = true

-- Completion options
vim.opt.wildmenu = true

-- Split options
vim.opt.splitright = true
vim.opt.splitbelow = true
