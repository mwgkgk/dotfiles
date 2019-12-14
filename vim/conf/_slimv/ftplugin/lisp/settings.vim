"
"
" Mappings
"

let g:slimv_leader = '<LocalLeader>'

" We'll leave the mappings for now.
" let g:slimv_keybindings = 0

"
"
" Paredit
"

" For now, we'll hold off on customizing paredit and just disable it altogether.
" Setting g:slimv_unmap_cr also disables electric return.
" let g:paredit_eletric_return = 0

" let g:paredit_mode = 0

" This is the only effective measure to keep mappings like X working.
" Simple g:paredit_mode = 0 is not enough: X will be empty.
" Defining X in after/ftplugin doesn't work either.
let g:paredit_disable_lisp = 1

"
"
" Insert
"

" <CR> is bugged with g:paredit_disable_lisp. Letting g:paredit_mode = 0 also
" helps. Using this for a more precise/idiomatic solution.
let g:slimv_unmap_cr = 1

" Slimv hard remaps tab
let g:slimv_unmap_tab = 1

"
"
" CLHS
"

let g:slimv_clhs_root = 'file://' . $HOME . '/help/HyperSpec/Body/'
let g:slimv_browser_cmd = 'firefox-ulm'
