let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_match_func = {'match': 'ctrlp_matchfuzzy#matcher'}

nmap <Leader>p :CtrlP<CR>
nmap <Leader>b :CtrlPBuffer<CR>
