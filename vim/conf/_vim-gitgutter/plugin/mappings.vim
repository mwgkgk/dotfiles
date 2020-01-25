
" ||
" || Hunks
" ||

" TODO textobject-until-prev/next-hunk
nmap <M-p> <Plug>(GitGutterPrevHunk)
nmap <M-n> <Plug>(GitGutterNextHunk)

" Hunk put:
nmap <Leader>hp <Plug>(GitGutterStageHunk)

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
nnoremap <Leader>gu :call system("git reset") <Bar> :GitGutterAll <Bar> :echo "Git reset"<CR>
