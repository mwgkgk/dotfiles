augroup filetypedetect
  au BufRead,BufNewFile * call ftdetect#detect_empty()
augroup END
