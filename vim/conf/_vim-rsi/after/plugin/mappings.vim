" Sat Feb 25 00:15:58 UTC 2023
" Sun Feb 26 04:49:06 UTC 2023
" Fri Mar  3 05:23:49 UTC 2023
" Slightly modify C-f to send-to-repl as fallback
" 2023-03-03: move to plugin/after

inoremap <expr> <C-f> col('.')>strlen(getline('.'))?"\<Lt>Esc>:TREPLSendLine\<Lt>CR>A":"\<Lt>Right>"
