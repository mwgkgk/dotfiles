" Open snippet definition file for the current filetype in default location:
nnoremap <Leader>u :UltiSnipsEdit<CR>

" Choose from all applicable snippet definition files:
nnoremap <Leader>U :UltiSnipsEdit!<CR>

" Select from all snippets on runtimepath:
nnoremap sU :call fzf#run(fzf#wrap(fzf#vim#with_preview({
            \ 'source': split(globpath(&rtp, 'usnippets/*')),
            \ })))<CR>
