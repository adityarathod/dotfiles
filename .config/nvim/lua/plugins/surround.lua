-- surround support
local M = {
    'kylechui/nvim-surround',
    version = '*',
    event = 'VeryLazy',
}

local surround_config = {}

function M.config()
    require('nvim-surround').setup(surround_config)
end

return M