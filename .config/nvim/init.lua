--[[

adi's init.lua

this is something i've built from scratch, using a few examples for reference -
but mainly based on my research and preferences. it may or may not work for you!

--]]

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

require("globals")
require("plugins")
require("keymap")
