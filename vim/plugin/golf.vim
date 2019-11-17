" Do following:
" - Count non-whitespace characters in visual selection, or current line;
" - Clear search register;
" - Restore cursor position.
"
" TODO Getpos within line, to support golfing parts of a line.
" https://stackoverflow.com/questions/1953056/in-vim-how-to-write-a-partial-line-to-a-file

command! -range GolfChars <line1>,<line2>s/\S/\S/gn | let @/="" | normal ``
