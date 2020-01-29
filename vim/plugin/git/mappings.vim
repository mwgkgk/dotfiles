" A custom git status pop-up:
nnoremap <silent> <M-o> :call git#popup#status()<CR>
inoremap <silent> <M-o> <C-c>:call git#popup#status()<CR>gi

" Display last message:
nnoremap <silent> <Leader>gm :echo "<C-r>=systemlist('git log --oneline -1')[0]<CR>"<CR>
nnoremap <silent> <Leader>gM :echo "<C-r>=system('git log -1')<CR>"<CR>

" Select branch to checkout
nnoremap <Leader>w :call fzf#run(fzf#wrap({
            \ 'source': systemlist('git branch'),
            \ 'sink': function('git#branch#checkout')
            \ }))<CR>
