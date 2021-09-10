au BufReadPre *.sol call s:sol_read_pre()

function! s:sol_read_pre() abort
  packadd vim-polyglot
endfunction
