vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true
vim.g.editorconfig = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmode = false

-- Sync OS clipboard
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = 'yes'
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Render max length guideline
vim.opt.colorcolumn = '100'

-- Editorconfig defaults
vim.opt.fileencoding = 'utf-8' -- charset = utf-8
vim.opt.bomb = false -- charset = utf-8
vim.opt.fileformat = 'unix' -- end_of_line = lf
vim.opt.expandtab = true -- indent_style = space
vim.opt.shiftwidth = 2 -- indent_size
vim.opt.softtabstop = 2 -- indent_size
vim.opt.endofline = true -- insert_final_newline
vim.opt.fixendofline = true -- insert_final_newline
