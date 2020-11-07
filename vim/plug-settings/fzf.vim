nmap <Leader>p :GFiles<CR>
nmap <Leader>b :Buffers<CR>
nmap <Leader>g :CustomAg<CR>

command! -bang -nargs=* CustomAg call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)

let g:fzf_layout = { 'down': '40%' }
let g:fzf_action = {
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit',
  \ 'ctrl-t': 'tab split'
  \ }
