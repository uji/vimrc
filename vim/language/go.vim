au BufNew,BufRead *.go call <SID>go_setting()

function! s:go_setting() abort
  packadd vim-goimports
endfunction
