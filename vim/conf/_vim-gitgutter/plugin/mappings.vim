
" ||
" || Hunks
" ||

" TODO textobject-until-prev/next-hunk
nmap <M-p> <Plug>(GitGutterPrevHunk)
nmap <M-n> <Plug>(GitGutterNextHunk)

" Hunk put:
nnoremap <silent> <Leader>hp :call _vim_gitgutter#stage_current_hunk()<CR>

" Stage hunk and verbose commit:
nnoremap <silent> <Leader>hh :call _vim_gitgutter#stage_commit_current_hunk()<CR>

" Hunk slurp: Stage hunk and amend noedit
nnoremap <silent> <Leader>hs :call _vim_gitgutter#slurp_current_hunk()<CR>

" Stage and commit hunk under cursor with line under cursor as message:
" This gets overwritten for certain filetypes in conf/_vim-gitgutter/ftplugin
nnoremap <silent> <Leader><Leader> :call _vim_gitgutter#stage_commit_current_hunk_with_message_from_line()<CR>

" Stage and commit hunk under cursor with message specified by motion:
nmap <Leader>hc <Plug>(operator-commit-current-hunk-with-message)

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
nnoremap <silent> <Leader>gu :call _vim_gitgutter#reset#current()<CR>

" Unstage everything:
nnoremap <silent> <Leader>gU :call _vim_gitgutter#reset#all()<CR>

" Roll back last commit:
nnoremap <silent> <Leader>gb :call _vim_gitgutter#reset#back()<CR>
