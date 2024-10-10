local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

local nmap = function(lhs, rhs, desc, custom_opts)
  local local_opts = custom_opts or {}
  vim.keymap.set('n', lhs, rhs, vim.tbl_extend('force', opts, local_opts, { desc = desc }))
end
local tmap = function(lhs, rhs, desc)
  vim.keymap.set('t', lhs, rhs, vim.tbl_extend('force', term_opts, { desc = desc }))
end

-------------------- Normal mode --------------------

-- Write
nmap('<leader>w', '<cmd>w<CR>', '[W]rite buffer')

-- Close buffer
nmap('<leader>c', '<cmd>bp<bar>sp<bar>bn<bar>bd<CR>', '[Q]uit [B]uffer')

-- Better window navigation
nmap('<C-h>', '<cmd>wincmd h<CR>')
nmap('<C-l>', '<cmd>wincmd l<CR>')
nmap('<C-k>', '<cmd>wincmd k<CR>')
nmap('<C-j>', '<cmd>wincmd j<CR>')

-- Navigate buffers
nmap('<S-l>', ':bnext<CR>')
nmap('<S-h>', ':bprev<CR>')

-- Resize with Arrows
nmap('<C-Up>', ':resize +2<CR>')
nmap('<C-Down>', ':resize -2<CR>')
nmap('<C-Left>', ':vertical resize -2<CR>')
nmap('<C-Right>', ':vertical resize +2<CR>')

-------------------- terminal mode --------------------
-- better terminal navigation
tmap('<c-h>', '<c-\\><c-n><c-w>h')
tmap('<c-j>', '<c-\\><c-n><c-w>j')
tmap('<c-k>', '<c-\\><c-n><c-w>k')
tmap('<c-l>', '<c-\\><c-n><c-w>l')

tmap('<Esc>', '<c-\\><C-n>')

-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', 'gl', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
