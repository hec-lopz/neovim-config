-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!

-- Set highlight on search
vim.o.hlsearch = true

-- Make line numbers default
vim.wo.relativenumber = true

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

vim.o.shiftwidth = 2
vim.o.tabstop = 2

vim.o.linebreak = true

vim.o.completeopt = 'menuone,noselect' -- menuone = shows pop-up when only one option, noselect = User must select option
vim.opt.shortmess:append 'c'
vim.opt.whichwrap:append '<,>,[,],h,l'
vim.o.swapfile = false

-- Folding
vim.wo.foldmethod = 'expr'
vim.o.foldenable = false
vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
