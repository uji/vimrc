inoremap <expr> <Tab>   pumvisible() ? "\<c-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<c-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<c-y>" : "\<cr>"
imap <c-space> <Plug>(asyncomplete_force_refresh)
