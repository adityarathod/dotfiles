-- one dark pro theme
local M = {
    'olimorris/onedarkpro.nvim',
    lazy = false,
    priority = 1000,
} 

function M.config()
    vim.cmd([[colorscheme onedark]])
end

return M