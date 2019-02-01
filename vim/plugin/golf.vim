" Do following:
" - Count non-whitespace characters in visual selection, or current line;
" - Clear search register;
" - Restore cursor position.
command! -range GolfChars '<,'>s/\S/\S/gn | let @/="" | normal ``

nnoremap <Leader>gg :GolfChars<CR>
vnoremap <Leader>gg :GolfChars<CR>
