au BufWrite *.go call s:goimports()

function! s:goimports() abort
  :LspCodeAction source.organizeImports
endfunction
