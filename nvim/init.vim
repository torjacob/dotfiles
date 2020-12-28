" Loading and configuring plugins
source $HOME/.config/nvim/plug.vim

" General settings
let g:mapleaderkey = "\<Space>"

set hidden
set pumheight=10
set background=dark
set t_Co=256
set cursorline
set colorcolumn=80
set linebreak
set number relativenumber
set splitbelow
set splitright
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set smartindent
set noshowmode
set conceallevel=0
set updatetime=100
set timeoutlen=500
set clipboard=unnamedplus

cmap w!! w !sudo tee %

" Keybindings

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" TAB in general mode will move to text buffer
nnoremap <TAB> gt
" SHIFT-TAB will go back
nnoremap <S-TAB> gT

" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Better terminal panel escape
tnoremap <Esc> <c-\><c-n>

" Open terminal in panel below
nnoremap # :TermPanel <CR>

" Autocommands
au! BufWritePost $MYVIMRC source % " Automatically sourcing init.vim

" Turn off linenumbers for terminal
augroup TerminalStuff
   au!
  autocmd TermOpen * setlocal nonumber norelativenumber
augroup END

" Custom commands
" TODO: Create functions which open, close, and toggle termpanel
" Takes if it should be a verticale or horizontal split
" Takes size of panel
command TermPanel :6sp | :terminal
