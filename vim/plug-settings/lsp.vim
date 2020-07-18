imap <c-space> <Plug>(asyncomplete_force_refresh)

function! s:on_lsp_buffer_enabled() abort
  setlocal omnifunc=lsp#complete
  setlocal signcolumn=yes
  nmap <buffer> gl <plug>(lsp-definition)
  nmap <buffer> gp <plug>(lsp-peek-definition)
  nmap <buffer> <f2> <plug>(lsp-rename)
  nmap <buffer> <f3> <plug>(lsp-implementation)
endfunction

augroup lsp_install
  au!
  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END
command! LspDebug let lsp_log_verbose=1 | let lsp_log_file = expand('~/lsp.log')

let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1
let g:asyncomplete_auto_popup = 1
let g:asyncomplete_popup_delay = 200
let g:lsp_text_edit_enabled = 1

let g:lsp_settings = {}
let g:lsp_settings['gopls'] = {
 \  'workspace_config': {
 \    'usePlaceholders': v:true,
 \    'analyses': {
 \      'fillstruct': v:true,
 \    },
 \  },
 \  'initialization_options': {
 \    'usePlaceholders': v:true,
 \    'analyses': {
 \      'fillstruct': v:true,
 \    },
 \  },
 \}
