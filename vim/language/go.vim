au BufWritePre *.go call s:go_format()

function! s:go_format() abort
  :silent! LspDocumentFormatSync
  :silent! LspCodeActionSync source.organizeImports
endfunction
