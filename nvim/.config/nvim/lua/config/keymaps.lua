-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode with a simpler shortcut
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Center after scroll
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Center screen after scroll up' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Center screen after scroll down' })
