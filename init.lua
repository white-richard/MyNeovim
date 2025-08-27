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

