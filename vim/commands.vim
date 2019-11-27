" This file is part of the undergoing configuration refactor.
" See baby.vim for the entry point.

" This file contains commands and abbrevs for base Vim. Plugin commands and
" abbrevs can be found in corresponding conf/<plugin>/plugin/commands.vim
" files.


"
"
" Standard Commands
"

cab Help help
cab H h

cab vh vert help

cab ww saveas

"
"
" Files
"

" Pass multiple arguments to :e
command! -nargs=* -complete=file Edit call files#edit_multiple(<f-args>)
cab e Edit

" Pass multiple arguments to :sp
command! -nargs=* -complete=file Sp call files#split_multiple(<f-args>)
cab sp Sp

" Pass multiple arguments to :vs
command! -nargs=* -complete=file Vs call files#vsplit_multiple(<f-args>)
cab vs Vs

" Force split
command! -nargs=* -complete=file Fsp call files#force_split_multiple(<f-args>)
cab fsp Fsp

"
"
" Date
"

" Without arguments, print the output of `date`
" With arguments, shift the date with `date --date='$1'`.
command! -nargs=? Date :call date#echo_date(<q-args>)
cab date Date

"
"
" Shell
"

" Execute shell command and display output in a temporary window.
command! -complete=shellcmd -nargs=+ Shell call shell#temp_window(<q-args>)

"
"
" Sessions
"

" Save as 'last session':
command! Mklast execute "mksession! ~/.vim/sessions/last"
cab mklast Mklast

"
"
" Random
"

" TODO Use built-in Vim rand():
" https://github.com/vim/vim/commit/06b0b4bc27077013e9b4b48fd1d9b33e543ccf99

" Jump to random line:
command! RandomLine execute 'normal! '.(matchstr(system('od -vAn -N3 -tu4 /dev/urandom'), '^\_s*\zs.\{-}\ze\_s*$') % line('$')).'G'

" Jump to random column:
command! RandomCol execute 'normal! '.(matchstr(system('od -vAn -N3 -tu4 /dev/urandom'), '^\_s*\zs.\{-}\ze\_s*$') % col('$')).'|'

"
"
" Refactoring
"

" Remove trailing whitespace:
command! Trailing %s/\s\+$//e
