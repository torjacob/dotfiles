let g:tex_flavor = 'latex'
let g:polyglot_disabled = ['latex']
let g:vimtex_compiler_progname = 'nvr'

" Loading Plugins
source $HOME/.config/nvim/plugins/load.vim

" General Config
source $HOME/.config/nvim/general/settings.vim " Settings
source $HOME/.config/nvim/keys/mappings.vim " Keybinds

" Treesitter
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
  indent = {
  enable = true
  }
}
EOF

" Colorscheme
source $HOME/.config/nvim/colorscheme/gruvbox.vim " OH YEAH!

" Plugin Config
source $HOME/.config/nvim/plugins/sneak.vim " Quickly search for next instance of something
source $HOME/.config/nvim/plugins/coc.vim " Autocomplete
source $HOME/.config/nvim/plugins/lightline.vim " Statusbar
source $HOME/.config/nvim/plugins/emmet-vim.vim " emmet
source $HOME/.config/nvim/plugins/better-whitespace.vim " better-whitespace
source $HOME/.config/nvim/plugins/NERDTree.vim " NERDTree
source $HOME/.config/nvim/plugins/indentLine.vim " indentline for python
source $HOME/.config/nvim/plugins/vim-latex-live-preview.vim " LaTeX Preview
