-- entry file, loads other config files
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- import config
require("config.options")
require("config.lazy")
require("config.autocmds")
