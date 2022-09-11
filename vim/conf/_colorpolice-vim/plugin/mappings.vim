" 
"
" Wildmenu
"

nnoremap <Leader>soL :ColorPoliceSync<Space>
nnoremap <Leader>sol :ColorPolice<Space>
nnoremap <Leader>soo :ColorPoliceSync<CR>

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
