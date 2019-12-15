" Select from arglist:
command! -bang FzfArgs call fzf#run(fzf#wrap('args',
            \ {'source': map([argidx()]+(argidx()==0?[]:range(argc())[0:argidx()-1])+range(argc())[argidx()+1:], 'argv(v:val)')}, <bang>0))

" To be used for all normal file selections:
command! -bang -nargs=? -complete=dir FzfFilesWithPreview
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" Fuzzy ripgrep, arguments = paths:
" rg options used:
" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* Rg call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" "" '. <q-args> .'| tr -d "\017"', 1, <bang>0)

" Rg ignoreing gitignore:
command! -bang -nargs=* RgWithIgnore call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --hidden --follow --glob "!.git/*" --color "always" "" '. <q-args> .'| tr -d "\017"', 1, <bang>0)

" Fuzzy ripgrep on current file's extension, arguments = paths:
command! -bang -nargs=* RgFt call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --glob "*.' . expand('%:e') . '" --color "always" "" '. <q-args> . '| tr -d "\017"', 1, <bang>0)

" Select from Git modified files:
command! FzfGitModified call fzf#run(fzf#wrap({'source': 'git ls-files --exclude-standard --others --modified'}))
