let g:mapleaderkey = "\<Space>"

syntax enable
syntax on
filetype plugin on

set hidden

set encoding=UTF-8
set fileencoding=UTF-8

set pumheight=10
" set cmdheight=2

set background=dark
set t_Co=256
set cursorline
set colorcolumn=80

set number
set relativenumber

set splitbelow
set splitright

set showtabline=2 " Don't relly know what i prefer
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab

set smartindent
set autoindent

set noshowmode
set conceallevel=0

set updatetime=100
set timeoutlen=500

set clipboard=unnamedplus

au! BufWritePost $MYVIMRC source % " Automatically sourcing init.vim

cmap w!! w !sudi tee %
