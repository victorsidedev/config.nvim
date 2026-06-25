--bootstraps lazy.nvim and tells it to load plugins
--this is also a plugin itself

-- vim.fn.stdpath("data") = ~/.local/share/nvim
-- .uv is libuv library gives vim access to low-level filesystem/system API
-- .fs_stat = file system status/metadata lookup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
local filesystem = vim.uv or vim.loop
local lazy_is_installed = filesystem.fs_stat(lazypath) ~= nil

if not lazy_is_installed then
	-- shell out to git and do: git clone --filter=blob:none https://github.com/folke/lazy.nvim.git ~/.local/share/nvim/lazy/lazy.nvim
  -- this installs lazy
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    '--branch=stable',
    'https://github.com/folke/lazy.nvim.git',
    lazypath,
  }
end

-- add lazy.nvim to neovim's runtime path
vim.opt.rtp:prepend(lazypath)

-- finally load it and load module namespace "plugins" which maps to ~/.config/nvim/lua/plugins/
-- lazy will scan this folder and load plugin specs
require("lazy").setup("plugins")
