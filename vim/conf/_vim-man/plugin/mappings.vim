" Fzf man pages:
nnoremap sH :call fzf#run(fzf#wrap({
            \   'source': 'apropos .',
            \   'sink': function('_vim_man#sinks#man_from_apropos'),
            \ }))<CR>
