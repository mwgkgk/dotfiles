" It's busted currently, god knows why. g:rsi_no_meta doesn't help either.
inoremap <M-b> <S-Left>
cnoremap <M-b> <S-Left>
inoremap <M-f> <S-Right>
cnoremap <M-f> <S-Right>
inoremap <M-d> <C-O>dw
cnoremap <M-d> <S-Right><C-W>
inoremap <M-n> <Down>
inoremap <M-p> <Up>

" Use actual <Del> which joins lines.
inoremap <C-d> <Del>
