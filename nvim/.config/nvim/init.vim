" Loading and configuring plugins
source $HOME/.config/nvim/plug.vim

" General settings
" Note: Settings which are enabled by default in nvim are excluded.
" See: :help nvim-defaults

let g:mapleaderkey = "\<Space>"

set hidden                  " Required for multiple buffers
set pumheight=10            " Smaller pop-up menu
set t_Co=256                " Support 256 colors
set cursorline              " Highligt cursorline
set colorcolumn=80          " Show 80th column
set linebreak               " Wrap lines in natural place
set number relativenumber   " Show linenumbers
set splitright splitbelow   " Natural splits
set tabstop=2               " Tab-width
set shiftwidth=2            " Tab-indent width
set expandtab               " Convert tabs to spaces
set smartindent             " Automatically adds extra indents
set noshowmode              " Hide modes etc. (Shown in statusbar)
set conceallevel=0          " Visible '' in markdown
set updatetime=100          " Async. updates
set scrolloff=1             " Min. number of lines to show around cursor
set noswapfile              " Disable swap files
set nobackup nowritebackup  " Recommended by coc

cmap w!! w !sudo tee %

" Keybindings

" Use alt + hjkl to resize windows
nnoremap <silent> <M-j>    :resize -2<CR>
nnoremap <silent> <M-k>    :resize +2<CR>
nnoremap <silent> <M-h>    :vertical resize -2<CR>
nnoremap <silent> <M-l>    :vertical resize +2<CR>

" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>

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
