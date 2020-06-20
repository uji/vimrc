au BufNew,BufRead *.go call <SID>go_setting()
au BufWrite *.go call s:goimports()

function! s:go_setting() abort
  packadd vim-goimports
endfunction

function! s:goimports() abort
  :LspCodeAction source.organizeImports
endfunction
