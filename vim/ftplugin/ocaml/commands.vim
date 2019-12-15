" Merlin
command! OpamHelptags :execute "helptags " . substitute(system('opam config var share'),'\n$','','''') .  "/merlin/vim/doc"
