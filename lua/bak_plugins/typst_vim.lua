return {
  'kaarmu/typst.vim',
  ft = 'typst',
  lazy=false,
  config = function()
    -- Optional: any plugin setup here

    -- Your TypstWatch function + keymaps
    vim.cmd([[
    function TypstWatch()
      vsp
      vertical resize 20
      exec 'terminal ' .. 'typst watch ' .. expand("%:")
      exec "norm \<c-w>h"
    endfunc
    nnoremap <silent><leader>tw :call TypstWatch()<cr>
    nnoremap <silent><leader>tr :silent exec "!zathura --fork " . expand("%:p:r") . ".pdf &"<cr>
    ]])
  end,
}
