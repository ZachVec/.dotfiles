vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opts = {noremap = true, silent = true }
local keyset = vim.keymap.set

-----------------
-- Normal mode --
-----------------
-- Better window navigation
keyset('n', '<C-h>', '<C-w>h', opts)
keyset('n', '<C-j>', '<C-w>j', opts)
keyset('n', '<C-k>', '<C-w>k', opts)
keyset('n', '<C-l>', '<C-w>l', opts)

-- Resize with windows
keyset('n', '<M-UP>', ':resize -2<CR>', opts)
keyset('n', '<M-DOWN>', ':resize +2<CR>', opts)
keyset('n', '<M-LEFT>', ':vertical resize -2<CR>', opts)
keyset('n', '<M-RIGHT>', ':vertical resize +2<CR>', opts)

-- swap lines
keyset('n', '<M-j>', 'mz:m+<cr>`z', opts)
keyset('n', '<M-k>', 'mz:m-2<cr>`z', opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
keyset('v', '<', '<gv', opts)
keyset('v', '>', '>gv', opts)

-----------------
-- Insert mode --
-----------------
keyset('i', 'jj', '<ESC>', opts)

