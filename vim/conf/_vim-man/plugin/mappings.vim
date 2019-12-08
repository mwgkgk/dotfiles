" Fzf man pages:
nnoremap sH :call fzf#run({
            \   'source': 'apropos .',
            \   'sink': function('_vim_man#sinks#man_from_apropos'),
            \   'down': '~15%'
            \ })<CR>
