function! operators#vim#conf_entry(motion_wiseness)
  normal! `[yv`]

  call files#conf#new(@")
endfunction
