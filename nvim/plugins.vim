call plug#begin() " Vim-plug

  " Statusbar
  Plug 'itchyny/lightline.vim' " Lightweight statusbar

  " Filetree
  Plug 'preservim/nerdtree' " Show filetree
  Plug 'ryanoasis/vim-devicons' " Icons for filetree

  " Colorscheme
  Plug 'gruvbox-community/gruvbox' " Gruvbox
  Plug 'shinchu/lightline-gruvbox.vim' " Gruvbox for statusbar
  Plug 'vwxyutarooo/nerdtree-devicons-syntax' " Colors for filetree

  " Git
  Plug 'tpope/vim-fugitive' " Useful git commands in vim
  Plug 'jreybert/vimagit' " View git status in buffer
  Plug 'mhinz/vim-signify' " Show changes in gutter

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
let g:gruvbox_italics = 1
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
hi Normal ctermbg=Black

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
  \]

" Treesitter
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  }
}
EOF

" LaTeX Live preview
let g:livepreview_previewer = 'zathura'

" Indentline
let g:indentLine_setColors = 0
let g:indentLine_enabled = 0
let blacklist = ['py']
autocmd BufWritePre * if index(blacklist, &ft) < 0 | IndentLinesDisable
au BufEnter,BufNew *.py IndentLinesEnable

