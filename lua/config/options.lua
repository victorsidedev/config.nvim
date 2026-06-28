-- editor options like numbers, tabs/spaces, clipboard, split behavior, search, etc

-- Make line numbers default
-- vim.o.number = true
-- Relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.inccommand = 'split'

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 4

vim.opt.tabstop = 4 -- number of visual spaces per TAB
vim.opt.softtabstop = 4 -- number of spaces when pressing <Tab>
vim.opt.shiftwidth = 4 -- number of spaces for autoindent
vim.opt.expandtab = true

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.wrap = false

vim.opt.incsearch = true

vim.opt.termguicolors = true
