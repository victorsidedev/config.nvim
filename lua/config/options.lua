-- editor options like numbers, tabs/spaces, clipboard, split behavior, search, etc

-- Make line numbers default
-- vim.o.number = true
-- Relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 4

vim.opt.tabstop = 4 -- number of visual spaces per TAB
vim.opt.softtabstop = 4 -- number of spaces when pressing <Tab>
vim.opt.shiftwidth = 4 -- number of spaces for autoindent
