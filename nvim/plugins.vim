call plug#begin('~/.local/share/nvim/plugged') " Vim-plug

  " Statusbar
  Plug 'itchyny/lightline.vim' " Lightweight statusbar

  " Filetree
  Plug 'preservim/nerdtree' " Show filetree
  Plug 'ryanoasis/vim-devicons' " Icons for filetree

  " Colorscheme
  Plug 'christianchiarulli/nvcode-color-schemes.vim' " Gruvbox with treesitter support
  Plug 'shinchu/lightline-gruvbox.vim' " Gruvbox for statusbar
  Plug 'vwxyutarooo/nerdtree-devicons-syntax' " Colors for filetree

  " Git
  Plug 'tpope/vim-fugitive' " Useful git commands in vim
  Plug 'jreybert/vimagit' " View git status in buffer
  Plug 'mhinz/vim-signify' " Show changes in gutter
  Plug 'f-person/git-blame.nvim' " Show git blame lens
  " Plug 'APZelos/blamer.nvim' " Show git blame

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
  Plug 'Yggdroot/indentLine' " Indent-lines for Python
  Plug 'jiangmiao/auto-pairs' " Auto pairs
  Plug 'honza/vim-snippets' " Snippets

  " Start screen
  Plug 'mhinz/vim-startify'

call plug#end()

" Plugin config

" Lightline
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox'

" NERDTree
nnoremap <C-n> :NERDTreeToggle <CR>
let g:NERDTreeDirArrowExpandable = '' " Hide arrows
let g:NERDTreeDirArrowCollapsible = '' " Hide arrows

" Gruvbox
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
  \]

" Treesitter
source $HOME/.config/nvim/treesitter.lua

" LaTeX Live preview
let g:livepreview_previewer = 'zathura'

" Indentline
let g:indentLine_setColors = 0
let g:indentLine_enabled = 0
let blacklist = ['py']
autocmd BufWritePre * if index(blacklist, &ft) < 0 | IndentLinesDisable
au BufEnter,BufNew *.py IndentLinesEnable
