call plug#begin()

    " Statusbar
    Plug 'itchyny/lightline.vim'
    Plug 'shinchu/lightline-gruvbox.vim'
    " Filetree
    Plug 'preservim/nerdtree'
    " LaTex
    Plug 'lervag/vimtex'
    " Better Syntax
    Plug 'sheerun/vim-polyglot'
    " Surround selected text & more
    Plug 'tpope/vim-surround'
    " Auto Pairs
    Plug 'jiangmiao/auto-pairs'
    " Sneaky Sneaky
    Plug 'justinmk/vim-sneak'
    " Live Previewing LaTeX PDF Output
    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
    " Autocomplete
    Plug 'neoclide/coc.nvim', { 'branch': 'release' }
    " Snippets
    Plug 'honza/vim-snippets'
    Plug 'mattn/emmet-vim'
    " Interactive Code
    Plug 'metakirby5/codi.vim'
    " Live Server
    Plug 'turbio/bracey.vim'
    " Smooth Scroll
    Plug 'psliwka/vim-smoothie'
    " Better Whitespace
    Plug 'ntpeters/vim-better-whitespace'
    " Useful bash-commands in VIM
    Plug 'tpope/vim-eunuch'
    " BEST colorscheme ever
    Plug 'gruvbox-community/gruvbox'
    " IndentLine for Python
    Plug 'Yggdroot/indentLine'
    " Show diffs (Git)
    Plug 'mhinz/vim-signify'
    " Devicons
    Plug 'ryanoasis/vim-devicons'
    " Colors for Nerdtree
    Plug 'vwxyutarooo/nerdtree-devicons-syntax'

call plug#end()
