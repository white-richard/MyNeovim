vim.g.mapleader = " "

---------
-- FZF --
---------
vim.keymap.set('n', '<leader>pw', vim.cmd.Ex)
vim.keymap.set('n', '<leader>ff', ':Files<CR>', { desc = 'FZF: Find files' })
vim.keymap.set('n', '<leader>fg', ':GFiles<CR>', { desc = 'FZF: Git files' })
vim.keymap.set('n', '<leader>fb', ':Buffers<CR>', { desc = 'FZF: List buffers' })
vim.keymap.set('n', '<leader>fl', ':Lines<CR>', { desc = 'FZF: Search lines in open buffers' })
vim.keymap.set('n', '<leader>fh', ':Helptags<CR>', { desc = 'FZF: Help tags' })
vim.keymap.set('n', '<leader>fc', ':Commands<CR>', { desc = 'FZF: Commands' })

---------------
-- Undo Tree --
---------------
vim.keymap.set('n', '<leader>u', '<cmd>UndotreeToggle<CR>', { desc = 'Toggle UndoTree' })

-------------
-- HARPOON --
-------------
local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>hg", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<leader>h1", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>h2", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>h3", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>h4", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev() end)
vim.keymap.set("n", "<leader>hn", function() harpoon:list():next() end)

--------------
-- Fugitive --
--------------
vim.keymap.set('n', '<leader>g', vim.cmd.Git)

----------------
-- Good Stuff --
----------------
vim.api.nvim_create_user_command("W", function()
    vim.cmd("w")
    vim.notify('Good Boy!')
end, {})
