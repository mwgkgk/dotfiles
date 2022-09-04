" 
"
" Wildmenu
"

nnoremap <Leader>coL :ColorPoliceSync<Space>
nnoremap <Leader>col :ColorPolice<Space>

"
"
" Fzf
"

" Sync across all instances:
nnoremap <silent> soL :call fzf#run(fzf#wrap({
            \   'source': colorpolice#complete('', '', 0),
            \   'sink': function('colorpolice#sync'),
            \ }))<CR>

" Set colorscheme locally:
nnoremap <silent> sol :call fzf#run(fzf#wrap({
            \   'source': colorpolice#complete('', '', 0),
            \   'sink': function('colorpolice#select'),
            \ }))<CR>
