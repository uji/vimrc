function! GinStatusByTab() abort
  :silent! tabe
  :silent! GinStatus
endfunction

map <Leader>gs :call GinStatusByTab()<CR>
map <Leader>gc :Gin commit<CR>
map <Leader>gp :Gin push<CR>
map <Leader>gd :GinDiff<CR>
map <Leader>gg :Gina grep<CR>
