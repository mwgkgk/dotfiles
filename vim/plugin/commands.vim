" This file contains commands and abbrevs for base Vim. Plugin commands and
" abbrevs can be found in corresponding conf/<plugin>/plugin/commands.vim
" files.


"
"
" Standard Commands
"

cab <expr> Help getcmdtype() == ':' ? 'help' : 'Help'
cab H h

cab <expr> vh getcmdtype() == ':' ? 'vert help' : 'vh'

cab <expr> ww getcmdtype() == ':' ? "saveas <C-r>=expand('%:p:h')<CR>/" : 'ww'

cab <expr> nn getcmdtype() == ':' ? "verb nn" : 'nn'

"
"
" Files
"

" Pass multiple arguments to :e
command! -nargs=* -complete=file EditCreating call files#edit_creating(<f-args>)
cab <expr> e getcmdtype() == ':' ? 'EditCreating' : 'e'

" Pass multiple arguments to :sp
command! -nargs=* -complete=file SplitCreating call files#split_creating(<f-args>)
cab <expr> sp getcmdtype() == ':' ? 'SplitCreating' : 'sp'

" Pass multiple arguments to :vs
command! -nargs=* -complete=file VSplitCreating call files#vsplit_creating(<f-args>)
cab <expr> vs getcmdtype() == ':' ? 'VSplitCreating' : 'vs'

" Force split
command! -nargs=* -complete=file ForceSplitCreating call files#force_split_creating(<f-args>)
cab <expr> fsp getcmdtype() == ':' ? 'ForceSplitCreating' : 'fsp'

"
"
" Date
"

" Without arguments, print the output of `date`
" With arguments, shift the date with `date --date='$1'`.
command! -nargs=? Date :call date#echo_date(<q-args>)
cab <expr> date getcmdtype() == ':' ? 'Date' : 'date'

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
cab <expr> mklast getcmdtype() == ':' ? 'Mklast' : 'mklast'

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
