
" ||
" || Status
" ||

nnoremap <Leader>G :rightbelow Gstatus<CR>

" ||
" || Commit
" ||

" Commit staged files verbosely:
" TODO Exit early if there are no staged changes
nnoremap <Leader>gc :Git commit -v<CR>

" Stage & commit current file:
" TODO Check if buffer has unwritten changes
" TODO Check if current file has any stageable changes
" TODO If file is untracked, stage_and_commit_untracked_file
nnoremap <Leader>C :Git commit -v %:p<CR>

" Stage and commit everything there is:
" TODO Exit early if there are no staged changes
nnoremap <Leader>gC :call system('git add -A') <Bar> :Git commit -v<CR>

" Git slurp: for staged hunks
" TODO Exit early if there are no staged changes, change 'Can't amend' wording
nnoremap <silent> <Leader>gs :call _vim_fugitive#cautious_amend_no_edit()<CR>

" Rename last commit:
" TODO Check if there are any staged hunks & exit
" TODO Add separate slurp+rename on <Leader>gR, change 'Can't amend' wording
nnoremap <silent> <Leader>gr :call _vim_fugitive#cautious_amend()<CR>

" ||
" || Untracked
" ||

" Stage untracked file:
" TODO Exit early if buffer has unwritten changes
nnoremap <Leader>ha :Git add % <Bar> :echo "Stage <C-r>=expand("%")<CR>"<CR>

" Stage & commit untracked file:
" TODO Exit early if buffer has unwritten changes
nnoremap <Leader>ga :call _vim_fugitive#stage_and_commit_untracked_file(expand('%'))<CR>

" ||
" || Diff
" ||

nnoremap <Leader>D :Gvdiff<CR>

" ||
" || Branches
" ||

nnoremap <Leader>w :call fzf#run(fzf#wrap({
            \ 'source': systemlist('git branch'),
            \ 'sink': function('_vim_fugitive#checkout_branch')
            \ }))<CR>

nnoremap <Leader>gw :Git checkout -b<Space>
