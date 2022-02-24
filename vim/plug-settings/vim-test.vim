if has('nvim')
  let test#strategy = "neovim"
  let test#neovim#term_position = "vert rightbelow"
else
  let test#strategy = "vimterminal"
  let test#vim#term_position = "vert rightbelow"
endif

nmap <Leader>t :TestNearest<CR>
