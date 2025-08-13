vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true
vim.g.editorconfig = true

vim.o.number = true
vim.o.relativenumber = true
vim.o.showmode = false

-- Sync OS clipboard
vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)

vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = 'yes'
vim.o.updatetime = 250

-- Decrease mapped sequence wait time (e.g. which-key popup)
vim.o.timeoutlen = 500

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.o.inccommand = 'split'

-- Show which line your cursor is on
vim.o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- Confirm unsaved
vim.o.confirm = true

-- Render max length guideline
vim.o.colorcolumn = '100'

-- Editorconfig defaults
vim.o.fileencoding = 'utf-8' -- charset = utf-8
vim.o.bomb = false -- charset = utf-8
vim.o.fileformat = 'unix' -- end_of_line = lf
vim.o.expandtab = true -- indent_style = space
vim.o.shiftwidth = 2 -- indent_size
vim.o.softtabstop = 2 -- indent_size
vim.o.endofline = true -- insert_final_newline
vim.o.fixendofline = true -- insert_final_newline
