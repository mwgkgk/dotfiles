function! DetectLisp()
  if getline(1) =~ '#!\/usr\/bin\/sbcl --script'
    setfiletype lisp
  endif
endfunction

augroup filetypedetect
  au BufRead,BufNewFile * call DetectLisp()
augroup END
