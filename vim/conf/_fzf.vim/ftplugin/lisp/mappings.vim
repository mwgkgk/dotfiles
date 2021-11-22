" Pseudo-btags:
" This looks like it should work but it doesn't
" nnoremap <buffer> S :FzfBLines ^(\(defun\|defmacro\|deftype\|defparameter\|defvar\) <CR>
nnoremap <buffer> S :FzfBLines ^(.* <CR>
