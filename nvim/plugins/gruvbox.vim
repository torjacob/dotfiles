" Gruvbox
let g:nvcode_termcolors=256
syntax on
colorscheme gruvbox

if (has("termguicolors")) " Checks for 24 bit color support
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
