
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
