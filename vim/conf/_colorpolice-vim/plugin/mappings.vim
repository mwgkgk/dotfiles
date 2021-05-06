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

" Sync across all instances:
nnoremap sol :silent call fzf#run(fzf#wrap({
            \   'source': colorpolice#complete('', '', 0),
            \   'sink': function('colorpolice#sync'),
            \ }))<CR>

" Set colorscheme locally:
nnoremap soL :silent call fzf#run(fzf#wrap({
            \   'source': colorpolice#complete('', '', 0),
            \   'sink': function('colorpolice#select'),
            \ }))<CR>
