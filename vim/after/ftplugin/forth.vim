" Max is 64, let's highlight 1 off
setlocal colorcolumn=65
setlocal textwidth=64
setlocal formatoptions=tcqj

setlocal shiftwidth=2
setlocal tabstop=2
setlocal softtabstop=2

" TODO fix quotes in iskeyword
setlocal iskeyword+=>"

setl commentstring=\\\ %s

" TODO fix comments for \G, bugged?
setl comments=:\\\ 
