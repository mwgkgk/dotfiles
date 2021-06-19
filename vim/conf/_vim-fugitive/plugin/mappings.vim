
" ||
" || Status
" ||

" :Gstatus deprecated in favor of :Git without args
nnoremap <Leader>G :rightbelow Git<CR>

" ||
" || Commit
" ||

" Commit staged files verbosely:
nnoremap <silent> <Leader>cc :call _vim_fugitive#commit_staged()<CR>

" Stage & commit current file:
nnoremap <silent> <Leader>C :call _vim_fugitive#stage_and_commit_current_file()<CR>

" Stage and commit everything there is:
nnoremap <silent> <Leader>gC :call _vim_fugitive#stage_and_commit_everything()<CR>

" Rename last commit:
nnoremap <silent> <Leader>gr :call _vim_fugitive#rename_last_commit()<CR>

" Rename last commit + slurp staged:
nnoremap <silent> <Leader>gR :call _vim_fugitive#rename_slurp_last_commit()<CR>

" ||
" || Diff
" ||

nnoremap <Leader>D :Gvdiff<CR>

" ||
" || Branches
" ||

" Mnenomic: Go Wide
nnoremap <Leader>gw :Git checkout -b<Space>
