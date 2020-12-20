call plug#begin('~/.local/share/nvim/plugged') " Vim-plug

  " Statusbar
  Plug 'itchyny/lightline.vim' " Lightweight statusbar

  " Filetree
  Plug 'preservim/nerdtree' " Show filetree
  Plug 'Xuyuanp/nerdtree-git-plugin' " Show Git changes in filetree
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

call plug#end()

" Plugin config

" Lightline
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \   'gitbranch': 'fugitive#head',
      \ }
      \ }

let g:lightline#bufferline#enable_devicons = 1

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (WebDevIconsGetFileFormatSymbol()) : ''
endfunction

" NERDTree
nnoremap <C-n> :NERDTreeToggle <CR>
let g:NERDTreeDirArrowExpandable = '' " Hide arrows
let g:NERDTreeDirArrowCollapsible = '' " Hide arrows
let NERDTreeQuitOnOpen = 1 " Close Tree on file open
let NERDTreeMinimalUI = 1 " Remove ? on top of tree

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
