vim.g.mapleader = " "
vim.g.maplocalleader = " "
require('config.lazy')
require('options')
require('colorscheme')
require('lsp')
require('keymaps')


-- Enable persistent undo
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.local/share/nvim/undo"

-- Allows clipboard through ssh using OSC52
-- MUST also adjust .tmux.conf for tmux copying.
-- set -g allow-passthrough on
-- set -g set-clipboard on
require('osc52').setup({
  max_length = 0, -- 0 = unlimited
  silent = true,
  trim = false,
})

-- Yank to local clipboard with <leader>y
local function copy_operator()
  require('osc52').copy_operator()
end
local function copy_visual()
  require('osc52').copy_visual()
end

vim.keymap.set('n', '<leader>y', copy_operator, {expr = true})
vim.keymap.set('n', '<leader>Y', function() return copy_operator() .. '_' end, {expr = true})
vim.keymap.set('v', '<leader>y', copy_visual)

