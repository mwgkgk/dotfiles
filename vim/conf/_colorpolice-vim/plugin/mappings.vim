" 
"
" Wildmenu
"

nnoremap <Leader>col :ColorPoliceSync<Space>
nnoremap <Leader>coL :ColorPolice<Space>

"
"
" Fzf
"

nnoremap sol :call fzf#run(fzf#wrap({
            \   'source': colorpolice#complete('', '', 0),
            \   'sink': function('colorpolice#sync'),
            \ }))<CR>
