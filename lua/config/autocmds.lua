-- Highlights when yanking (copying) text

-- `:help lua-guide-autocommands`
-- `:help vim.hl.on_yank()`

local highlight_yank_group = vim.api.nvim_create_augroup('HighlightYank', { clear = true })

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking text',
  group = highlight_yank_group,
  callback = function()
    vim.highlight.on_yank()
  end,
})
