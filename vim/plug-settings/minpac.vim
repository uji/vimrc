packadd minpac

if exists('*minpac#init')
  call minpac#init()

  call minpac#add('k-takata/minpac', {'type': 'opt'})

  call minpac#add('Yggdroot/indentLine')
  call minpac#add('tpope/vim-abolish')
  call minpac#add('mattn/vim-lexiv')
  call minpac#add('andymass/vim-matchup')
  call minpac#add('tpope/vim-surround')
  call minpac#add('dense-analysis/ale')
  call minpac#add('vim-airline/vim-airline')
  call minpac#add('prabirshrestha/async.vim')
  call minpac#add('prabirshrestha/asyncomplete.vim')
  call minpac#add('prabirshrestha/asyncomplete-lsp.vim')
  call minpac#add('prabirshrestha/vim-lsp')
  call minpac#add('mattn/vim-lsp-settings')
  call minpac#add('mattn/vim-sonictemplate')
  call minpac#add('junegunn/fzf', { 'do': { -> fzf#install() } })
  call minpac#add('junegunn/fzf.vim')
  call minpac#add('Lokaltog/vim-easymotion')
  call minpac#add('sheerun/vim-polyglot')
  call minpac#add('lambdalisue/gina.vim')
  call minpac#add('arcticicestudio/nord-vim')

  " go
  call minpac#add('mattn/vim-goimports', {'type': 'opt'})
endif

command! MinPacUpdate packadd minpac | source $MYVIMRC | call minpac#update()
command! MinPacClean packadd minpac | source $MYVIMRC | call minpac#clean()
