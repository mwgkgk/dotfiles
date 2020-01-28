
" ||
" || Status
" ||

nnoremap <Leader>G :rightbelow Gstatus<CR>

" ||
" || Commit
" ||

" Commit staged files verbosely:
nnoremap <Leader>gc :Git commit -v<CR>

" Stage & commit current file:
nnoremap <Leader>C :Git commit -v %:p<CR>

" Stage and commit everything there is:
nnoremap <Leader>gC :call system('git add -A') <Bar> :Git commit -v<CR>

" ||
" || Undo
" ||

" Rename last commit:
nnoremap <silent> <Leader>gr :call _vim_fugitive#cautious_amend()<CR>

" ||
" || Untracked
" ||

" Stage untracked file:
nnoremap <Leader>ha :Git add % <Bar> :echo "Stage <C-r>=expand("%")<CR>"<CR>

" Stage & commit untracked file:
nnoremap <Leader>ga :call _vim_fugitive#stage_and_commit_untracked_file(expand('%'))<CR>

" ||
" || Diff
" ||

nnoremap <Leader>D :Gvdiff<CR>
