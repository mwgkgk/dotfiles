
" ||
" || Signs
" ||

let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '~-'

hi link GitGutterAdd SignColumn
hi link GitGutterChange SignColumn
hi link GitGutterDelete SignColumn
hi link GitGutterChangeDelete SignColumn

" ||
" || Preview
" ||

let g:gitgutter_preview_win_floating = 1
