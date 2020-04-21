runtime! mapping/*.vim
runtime! plug-settings/*.vim
runtime! command/*.vim
runtime local.vim
filetype plugin indent on
set shell=bash

set encoding=utf-8
scriptencoding utf-8
set fileformat=unix
setlocal ff=unix
set number
set relativenumber
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
colorscheme ujicolo

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

let mapleader = "\<Space>"
inoremap <C-[> <ESC>

"terminal
tnoremap <silent> <C-[> <C-\><C-n>
