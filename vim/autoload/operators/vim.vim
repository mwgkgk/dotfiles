function! operators#vim#conf_entry(motion_wiseness)
  normal! `[yv`]

  let l:conf_path = '~/.vim/conf/_' . @" . '/'

  call feedkeys(':SplitCreating ' . l:conf_path)
endfunction
