-- Telescope keymaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader><leader>', builtin.find_files, {}) -- for extra laziness

-- LSP keymaps
vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
vim.keymap.set('n', 'K', vim.lsp.buf.hover)
vim.keymap.set('n', '<leader>vws', vim.lsp.buf.workspace_symbol)
vim.keymap.set('n', '<leader>vd', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_next)
vim.keymap.set('n', ']d', vim.diagnostic.goto_prev)
vim.keymap.set('n', '<leader>vca', vim.lsp.buf.code_action)
vim.keymap.set('n', '<leader>vrr', vim.lsp.buf.references)
vim.keymap.set('n', '<leader>vrn', vim.lsp.buf.rename)

-- Split keymaps
vim.keymap.set('n', '<C-J>', '<C-W><C-J>')
vim.keymap.set('n', '<C-K>', '<C-W><C-K>')
vim.keymap.set('n', '<C-L>', '<C-W><C-L>')
vim.keymap.set('n', '<C-H>', '<C-W><C-H>')

-- Tree keymaps
vim.keymap.set('n', 'tt', ':NvimTreeToggle<CR>', { silent = true })
vim.keymap.set('n', 'tr', ':NvimTreeFocus<CR>', { silent = true })

-- (experimental) close the current tab and open the buffer in a split
vim.keymap.set('n', '<leader>ts', ':BufferClose<CR>:split<CR>:b#<CR>', { silent = true })

