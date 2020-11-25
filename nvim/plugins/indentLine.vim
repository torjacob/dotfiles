let g:indentLine_defaultGroup = 'SpecialKey'
let g:indentLine_enabled = 0

" Enable indentLine for relevant filetypes
augroup indentLine_group
  autocmd!
  autocmd FileType python let g:indentLine_enabled = 1
augroup END