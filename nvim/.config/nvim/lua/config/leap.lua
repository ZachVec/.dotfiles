vim.keymap.set({'n', 'x', 'o'}, '<leader>g', '<Plug>(leap-forward-to)')
vim.keymap.set({'n', 'x', 'o'}, '<leader>G', '<Plug>(leap-backward-to)')

-- To search bi-directional:
-- vim.keymap.set({'n', 'x', 'o'}, '<leader>g', function ()
--   local current_window = vim.fn.win_getid()
--   require('leap').leap { target_windows = { current_window } }
-- end)
