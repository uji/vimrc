runtime! mapping/*.vim
runtime! plug-settings/*.vim
runtime! command/*.vim
runtime! language/*.vim
runtime local.vim
filetype plugin indent on
set shell=bash

set encoding=utf-8
scriptencoding utf-8
set fileformat=unix
setlocal ff=unix
set clipboard+=unnamed

set expandtab
set smarttab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set hidden
set hlsearch
syntax enable
set synmaxcol=320

colorscheme nord
set termguicolors

set ignorecase
set smartcase

set wildmenu
set wildmode=longest,full

set noswapfile
set noundofile
set nobackup

augroup save
  autocmd BufWritePre * :%s/\s\+$//ge
augroup END
