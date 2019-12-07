call operator#user#define('conf-entry', 'Op_command_conf_entry')
function! Op_command_conf_entry(motion_wiseness)
  normal! `[yv`]

  call files#conf#new(@")
endfunction
