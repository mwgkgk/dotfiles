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

" Sat Feb 25 00:15:58 UTC 2023

" Slightly modify C-f to send-to-repl?

" Maybe it redirects wto normal c-f?
" inoremap <expr> <C-F> col('.')>strlen(getline('.'))?"\<Lt>C-F>":"\<Lt>Right>"
" cnoremap <expr> <C-F> getcmdpos()>strlen(getcmdline())?&cedit:"\<Lt>Right>"

" No but it's also bringing up a bigger problem
" inoremap <C-f> <Esc>:TREPLSendLine<CR>A
