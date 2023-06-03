
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

" Haha, this is what it's like not to use macros:
" Stage and commit hunk under cursor with message specified by motion,
" prepending Add:
nmap <Leader>hma <Plug>(operator-commit-current-hunk-as-add)
" prepending Use:
nmap <Leader>hmu <Plug>(operator-commit-current-hunk-as-use)
" prepending Update:
nmap <Leader>hmU <Plug>(operator-commit-current-hunk-as-update)
" prepending Extract:
nmap <Leader>hme <Plug>(operator-commit-current-hunk-as-extract)
" prepending Fix:
nmap <Leader>hmf <Plug>(operator-commit-current-hunk-as-fix)
" prepending Tackle:
nmap <Leader>hmt <Plug>(operator-commit-current-hunk-as-tackle)

" Stage and commit file with message specified by motion:
" TODO Move out of conf/_vim-gitgutter when operator-flashy is more abstracted
nmap <Leader>gc <Plug>(operator-commit-file-with-message)

" Stage and commit hunk everything with message specified by motion,
" prepending Add:
nmap <Leader>gA <Plug>(operator-commit-everything-as-add)

" Rename last commit with message specified by motion:
nmap <Leader>hr <Plug>(operator-rename-last-commit)

" Stage and commit hunk verbosely with message specified by motion
" TODO Move out of conf/_vim-gitgutter when operator-flashy is more abstracted
nmap <Leader>hv <Plug>(operator-verb-commit-hunk-with-message)

" Stage and commit file verbosely with message specified by motion
" TODO Move out of conf/_vim-gitgutter when operator-flashy is more abstracted
nmap <Leader>gv <Plug>(operator-verb-commit-file-with-message)

" Stage and commit everything verbosely with message specified by motion
" TODO Move out of conf/_vim-gitgutter when operator-flashy is more abstracted
nmap <Leader>gV <Plug>(operator-verb-commit-everything-with-message)

" Rename last commit verbosely with message specified by motion:
" TODO Move out of conf/_vim-gitgutter when operator-flashy is more abstracted
nmap <Leader>hR <Plug>(operator-verb-rename-last-commit)

" This used to be a standard map.
nmap <Leader>hu <Plug>(GitGutterUndoHunk)

" ||
" || Preview
" ||

nnoremap <silent> <M-z> :GitGutterPreviewHunk<CR>
