vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.termguicolors = true

-- Line numbers
vim.opt.number = true
vim.wo.relativenumber = true

-- Tabs to spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.softtabstop = 4

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- More convenient ways to get back to normal mode
vim.keymap.set({'i', 'v'}, 'jk', '<ESC>')
vim.keymap.set({'i', 'v'}, 'kj', '<ESC>')

vim.opt.clipboard = "unnamedplus"
