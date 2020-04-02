
" Mappings in this file do not depend on any plugins, with the exception of
" some of them issuing calls to GitGutter to update signcolumn.

" Moving those out of conf/ was not an easy decision to make, but in the end
" of the day the utility they provide is not plugin-specific.


" ||
" || Pop-up
" ||

" A custom git status pop-up:
nnoremap <silent> <M-o> :call git#popup#status()<CR>
inoremap <silent> <M-o> <C-c>:call git#popup#status()<CR>gi

" ||
" || Log
" ||

" Display last message:
nnoremap <silent> <Leader>gm :echo "<C-r>=systemlist('git log --oneline -1')[0]<CR>"<CR>
nnoremap <silent> <Leader>gM :echo "<C-r>=system('git log -1')<CR>"<CR>

" ||
" || Untracked
" ||

" Stage file, tracked or untracked:
nnoremap <silent> <Leader>ha :call git#stage#interactively(expand('%'))<CR>

" Stage & commit untracked file with auto-generated message:
nnoremap <silent> <Leader>ga :call git#commit#add_untracked_file(expand('%'))<CR>

" ||
" || Amend
" ||

" Slurp staged files:
nnoremap <silent> <Leader>gs :call git#commit#slurp_staged()<CR>

" ||
" || Undo
" ||

" Perhaps someday in 2030 it'll be possible to unstage-last-hunk, but for now
" we resort to git reset.

" Unstage current file:
nnoremap <silent> <Leader>gu :call git#reset#current()<CR>

" Unstage everything:
nnoremap <silent> <Leader>gU :call git#reset#all()<CR>

" Roll back last commit:
nnoremap <silent> <Leader>gb :call git#reset#back()<CR>

" Hard reset current file:
nnoremap <silent> <Leader>ghu :call git#hardreset#current()<CR>

" Hard reset everything:
nnoremap <silent> <Leader>ghU :call git#hardreset#all()<CR>
