-- plugins.lua: lazy.nvim based plugin setup

LAZY_PLUGIN_SPEC = {}

function spec(item)
	table.insert(LAZY_PLUGIN_SPEC, { import = item })
end

spec('plugins/onedarkpro')
spec('plugins/lualine')
spec('plugins/presence')
spec('plugins/surround')
spec('plugins/rust')
spec('plugins/telescope')
spec('plugins/lsp_zero')
spec('plugins/mason')

require('lazy').setup(LAZY_PLUGIN_SPEC)

-- modelines are cool! :help modeline for more :D
-- vim: ts=2 sts=2 sw=2 tw=80 et
