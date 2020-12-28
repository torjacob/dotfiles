" Indentline
let g:indentLine_setColors = 0
let g:indentLine_enabled = 0
let g:indentLine_char = '┆'

" Enable for python, disable for everything else
let blacklist = ['py']
au BufWritePre * if index(blacklist, &ft) < 0 | IndentLinesDisable
au BufEnter,BufNew *.py IndentLinesEnable
