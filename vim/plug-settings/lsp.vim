imap <c-space> <Plug>(asyncomplete_force_refresh)

function! s:on_lsp_buffer_enabled() abort
  setlocal omnifunc=lsp#complete
  setlocal signcolumn=yes
  nmap <buffer> gl <plug>(lsp-definition)
  nmap <buffer> gp <plug>(lsp-peek-definition)
  nmap <buffer> gr <plug>(lsp-rename)
  nmap <buffer> gi <plug>(lsp-implementation)
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
let g:lsp_diagnostics_signs_error = {'text': '🥺'}
let g:lsp_diagnostics_signs_warning = {'text': '🤔'}
let g:lsp_diagnostics_virtual_text_enabled = 0

let g:lsp_settings = {}
let g:lsp_settings['efm-langserver'] = {
 \  'disabled': v:false,
 \  'initializationOptions': {
 \    'documentFormatting': v:true,
 \    'hover': v:true,
 \    'documentSymbol': v:true,
 \    'codeAction': v:true,
 \    'completion': v:true
 \  }
 \}

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

let g:lsp_settings_filetype_typescript = [
 \  'efm-langserver',
 \  'typescript-language-server',
 \]

let g:lsp_settings_filetype_ruby = [
 \  'solargraph',
 \]

let g:lsp_settings['typescript-language-server'] = {
 \  'config': {
 \    'diagnostics': v:false,
 \  },
 \}

