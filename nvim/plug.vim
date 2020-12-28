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

" Sourcing plugin configs
function! SourceDirectory(file, filetype)
  if a:filetype == '*.vim'
    let commandtype = 'source'
  elseif a:filetype == '*.lua'
    let commandtype = 'luafile'
  endif
  for s:fpath in split(globpath(a:file, a:filetype), '\n')
    exe commandtype s:fpath
  endfor
endfunction

call SourceDirectory('~/.config/nvim/plugins', '*.vim')
call SourceDirectory('~/config/nvim/lua', '*.lua')
