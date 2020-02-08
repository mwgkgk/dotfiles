
" ||
" || Status
" ||

nnoremap <Leader>G :rightbelow Gstatus<CR>

" ||
" || Commit
" ||

" Commit staged files verbosely:
nnoremap <silent> <Leader>cc :call _vim_fugitive#commit_staged()<CR>

" Stage & commit current file:
nnoremap <silent> <Leader>C :call _vim_fugitive#stage_and_commit_current_file()<CR>

" Stage and commit everything there is:
nnoremap <silent> <Leader>gC :call _vim_fugitive#stage_and_commit_everything()<CR>

" Git slurp: for staged hunks
" TODO Exit early if there are no staged changes, change 'Can't amend' wording
" TODO Doesn't need to be fugitive
nnoremap <silent> <Leader>gs :call _vim_fugitive#cautious_amend_no_edit()<CR>

" Rename last commit:
" TODO Check if there are any staged hunks & exit
" TODO Add separate slurp+rename on <Leader>gR, change 'Can't amend' wording
nnoremap <silent> <Leader>gr :call _vim_fugitive#cautious_amend()<CR>

" ||
" || Diff
" ||

nnoremap <Leader>D :Gvdiff<CR>

" ||
" || Branches
" ||

nnoremap <Leader>gw :Git checkout -b<Space>
