return {
  'ibhagwan/fzf-lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- optional icons
  config = function()
    require('fzf-lua').setup({})
  end
}
