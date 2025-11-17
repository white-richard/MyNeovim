return {
  'chomosuke/typst-preview.nvim',
  lazy = false, -- or ft = 'typst'
  version = '1.*',
  opts = {
        vim.api.nvim_set_keymap('n', '<leader>ts', ':TypstPreviewToggle<CR>', { noremap = true, silent = true }),
        vim.api.nvim_set_keymap('n', '<leader>tu', ':TypstPreviewUpdate<CR>', { noremap = true, silent = true }),
        vim.api.nvim_set_keymap('n', '<leader>tp', ':TypstPreview<CR>', { noremap = true, silent = true })
    }, -- lazy.nvim will implicitly calls `setup {}`
    -- dependencies_bin = { ['tinymist'] = 'tinymist' },
    port = 5000,
  -- Make the server listen on all interfaces:
  extra_args = { "--data-plane-host=0.0.0.0:5000" },

}
