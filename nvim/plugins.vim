call plug#begin('~/.local/share/nvim/plugged') " Vim-plug

  " Statusbar
  Plug 'vim-airline/vim-airline' " Lightweight statusbar

  " Colorscheme
  Plug 'christianchiarulli/nvcode-color-schemes.vim' " Gruvbox with treesitter support
  Plug 'vim-airline/vim-airline-themes' " Colors for statusbar
  Plug 'vwxyutarooo/nerdtree-devicons-syntax' " Colors for filetree

  " Git
  Plug 'tpope/vim-fugitive' " Useful git commands in vim
  Plug 'jreybert/vimagit' " View git status in buffer
  Plug 'mhinz/vim-signify' " Show changes in gutter
  Plug 'f-person/git-blame.nvim' " Show git blame lens

  " Autocomplete
  Plug 'neoclide/coc.nvim', { 'branch': 'release' } " Language server and more

  " Syntax Highlighting
  Plug 'nvim-treesitter/nvim-treesitter' " Multilevel syntax (req. nightly)

  " LaTeX
  Plug 'lervag/vimtex' " Syntax for LaTeX
  Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' } " Live preview

  " Editor
  Plug 'psliwka/vim-smoothie' " Smooth scrolling
  Plug 'junegunn/goyo.vim' " Focused mode
  Plug 'Yggdroot/indentLine' " Indent-lines (Python)
  Plug 'jiangmiao/auto-pairs' " Auto pairs
  Plug 'honza/vim-snippets' " Snippets
  Plug 'airblade/vim-rooter' " Project root
  Plug 'ntpeters/vim-better-whitespace' " Remove / show whitespace

  " Start screen
  Plug 'mhinz/vim-startify'

  " Fzf
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " Debugging
  Plug 'puremourning/vimspector'

call plug#end()

" Plugin config

" Airline
let g:airline#extensions#tabline#enabled = 1 " Automatically display all buffers when there's only one tab open
let g:airline#extensions#tabline#left_sep = ' ' " Straight tabs
let g:airline#extensions#tabline#left_alt_sep = '|' " Straight tabs
let g:airline_section_z = '%p%% ☰ %l/%L :%c'
let g:airline_theme = 'base16_gruvbox_dark_hard'

" Filetree
nnoremap <C-n> :CocCommand explorer <CR>
nmap <space>f :CocCommand explorer --preset floating<CR>
let g:coc_explorer_global_presets = {
\   '.vim': {
\     'root-uri': '~/.vim',
\   },
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   }
\ }

" Gruvbox
let g:nvcode_termcolors=256
syntax on
colorscheme gruvbox

if (has("termguicolors")) " Checks for 24 bit color support
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

" Git blame
let g:gitblame_enabled = 0 " Disables lens by default (use GitBlameToggle)
" Toggle lens with ctrl + g
nnoremap <C-g> :GitBlameToggle <CR>

" CoC
let g:coc_global_extensions = [
  \ 'coc-clangd',
  \ 'coc-python',
  \ 'coc-vimtex',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-lua',
  \ 'coc-prettier',
  \ 'coc-eslint',
  \ 'coc-json',
  \ 'coc-tsserver',
  \ 'coc-java',
  \ 'coc-snippets',
  \ 'coc-explorer',
  \]

" Treesitter
luafile $HOME/.config/nvim/treesitter.lua

" LaTeX Live preview
let g:livepreview_previewer = 'zathura'

" Indentline
let g:indentLine_setColors = 0
let g:indentLine_enabled = 0
let g:indentLine_char = '┆'
" Enable for python, disable for everything else
let blacklist = ['py']
au BufWritePre * if index(blacklist, &ft) < 0 | IndentLinesDisable
au BufEnter,BufNew *.py IndentLinesEnable

" Better Whitespace
let g:strip_whitespace_on_save = 1
let g:strip_whitespace_confirm = 0
let g:strip_whitelines_at_eof = 1

" Startify
let g:webdevicons_enable_startify = 1
