local expr = {silent = true, expr = true, remap = false}

-- navigation
	-- tools
	vim.keymap.set('n', '<leader>E', ':NvimTreeToggle<CR>', { silent = true, remap = false })
	vim.keymap.set('n', '<leader>D', '')
	vim.keymap.set('n', '<leader>G', '')

	-- search
	vim.keymap.set('n', '<leader>F', ':Ag ')
	vim.keymap.set('n', '<leader>f', '/')

	-- diagnostics
	vim.keymap.set('n', '<leader>j', function() require('trouble').toggle('workspace_diagnostics') end)

	-- buffers management
	vim.keymap.set('n', '<C-Tab>', ':bnext<CR>')
	vim.keymap.set('n', '<S-Tab>', ':bprev<CR>')
	vim.keymap.set('n', '<leader>w', ':bd<CR>')
	vim.keymap.set('n', '<leader>s', ':w<CR>')

	-- terminal movements
	vim.keymap.set('n', '<c-k>', ':wincmd k<CR>', { silent = true })
	vim.keymap.set('n', '<c-j>', ':wincmd j<CR>', { silent = true })
	vim.keymap.set('n', '<c-h>', ':wincmd h<CR>', { silent = true })
	vim.keymap.set('n', '<c-l>', ':wincmd l<CR>', { silent = true })

-- easy ident
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')


vim.keymap.set('', 'j', "(v:count == 0 ? 'gj' : 'j')", expr)
vim.keymap.set('', 'k', "(v:count == 0 ? 'gk' : 'k')", expr)

vim.keymap.set('', ',s', ':split')
vim.keymap.set('', ',v', ':vsplit')
vim.keymap.set('', ',t', ':tabnew')
vim.keymap.set('', ',c', ':w')
vim.keymap.set('', ',o', ':only')

-- unbinds
vim.keymap.set('n', '<Space>', '<Nop>', { silent = true, remap = false })
vim.keymap.set('n', 'Q', '<nop>')
vim.keymap.set('n', 'q', '<nop>')
