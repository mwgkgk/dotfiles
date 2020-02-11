
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

" Stage and commit file with message specified by motion:
" TODO Move out of conf/_vim-gitgutter when operator-flashy is more abstracted
nmap <Leader>gc <Plug>(operator-commit-file-with-message)

" Rename last commit with message specified by motion:
nmap <Leader>hr <Plug>(operator-rename-last-commit)

" ||
" || Preview
" ||

nnoremap <silent> <M-z> :GitGutterPreviewHunk<CR>
