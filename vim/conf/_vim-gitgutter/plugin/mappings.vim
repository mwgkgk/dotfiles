
" ||
" || Hunks
" ||

" TODO textobject-until-prev/next-hunk
nmap <M-p> <Plug>(GitGutterPrevHunk)
nmap <M-n> <Plug>(GitGutterNextHunk)

" Hunk put:
" TODO Exit early if buffer has unwritten changes
nmap <Leader>hp <Plug>(GitGutterStageHunk)

" Stage hunk and verbose commit:
" TODO Exit early if buffer has unwritten changes
nnoremap <silent> <Leader>hh :call _vim_gitgutter#stage_commit_current_hunk()<CR>

" Hunk slurp: Stage hunk and amend noedit
" TODO Exit early if buffer has unwritten changes
nnoremap <silent> <Leader>hs :call _vim_gitgutter#slurp_current_hunk()<CR>

" ||
" || Preview
" ||

nnoremap <silent> <M-z> :GitGutterPreviewHunk<CR>

" ||
" || Undo
" ||

" Perhaps someday in 2030 it'll be possible to unstage-last-hunk, but for now
" we resort to git reset.

" This mapping should reside in ~/.vim/plugin/git/mappings.vim however
" gitgutter update needs to be triggered manually if we use system() call.

" Which we do because it's the only way to dispatch synchronously without
" flicker.

" Unstage current file:
" TODO Exit early if there are no staged changes in current file
" TODO Exit early if buffer has unwritten changes
nnoremap <silent> <Leader>gu :call _vim_gitgutter#reset#current()<CR>

" Unstage everything:
" TODO Exit early if there are no staged changes
nnoremap <silent> <Leader>gU :call _vim_gitgutter#reset#all()<CR>

" Roll back last commit:
nnoremap <silent> <Leader>gb :call _vim_gitgutter#reset#back()<CR>
