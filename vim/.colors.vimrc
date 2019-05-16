" {{{
" vim: foldmethod=marker foldlevel=0
" }}}

augroup .colors
    autocmd!
augroup END

" static {{{
" let s:static_colo = 'industry'
" let s:static_colo = '256-jungle'
" let s:static_colo = 'tactical'
" let s:static_colo = 'mayansmokemod'
" let s:static_colo = 'badwolf'
" let s:static_colo = 'devbox-dark-256'
" let s:static_colo = 'fisa'

" let s:static_colo = 'grind'
" let s:static_colo = 'murphy_mod'
" let s:static_colo = 'devbox-dark-256-lighter'
" let s:static_colo = 'zenburn'
" let s:static_colo = 'devbox-dark-256'
" let s:static_colo = 'haze'

" let s:static_colo = 'gentooish'
" let s:static_colo = 'xoria256'
" let s:static_colo = 'peaksea_mod'

" let s:static_colo = 'nuclear'
" let s:static_colo = 'fadedvision'
" let s:static_colo = 'hell'
let s:static_colo = 'thief'

" let s:static_colo = 'Tomorrow'

" let s:static_colo = 'hybrid-dark'
" let s:static_colo = 'typofree'
" let s:static_colo = 'badwolf'

" let s:static_colo = 'redmustang'
" let s:static_colo = 'mustangmod'

" let s:static_colo = 'outsider'
" let s:static_colo = 'alduin'

" let s:static_colo = 'apples'
" let s:static_colo = 'github'
" let s:static_colo = 'pink'

" let s:static_colo = 'orbital'

" let s:static_colo = 'kalisi-dark'

" let s:static_colo = 'apprentice'
" let s:static_colo = 'disciple'

" let s:static_colo = 'sunday256'
" let s:static_colo = 'ivan'

" let s:static_colo = 'mwgkgk'
" let s:static_colo = 'moot'

" let s:static_colo = 'seoul256-light'

" let s:static_colo = 'solarized-light'

" let s:static_colo = 'SerialExperimentsLain'
" let s:static_colo = 'arcadia'
" let s:static_colo = 'nighted'

" let s:static_colo = 'jellybeans'
" let s:static_colo = 'ufo'

" let s:static_colo = 'lucius-light'

" let s:static_colo = 'lucius-dark'
" let s:static_colo = 'luciusmod'

" let s:static_colo = 'morning'

" let s:static_colo = 'gruvbox-dark'
" }}}

" flex {{{
function! s:flex_colo()
    let hr = str2nr(strftime('%H'))
    if hr < 15 && hr > 3
        " return 'hybrid-light'

        " return 'lucius-light'

        " return 'seoul256-light'

        " return 'disciple'
        " return 'peaksea_mod'
        return 'Tomorrow'

        " return 'gruvbox'
        " return 'sunday256'
        " return 'mayansmokemod'
        " return 'kalisi'
        " return 'hybrid-light'
    else
        " return 'mustangmod'
        " return 'kalisi-dark'

        return 'Tomorrow-Night'
        " return 'lucius'
        " return 'devbox-dark-256-lighter'
        " return 'hybrid'
        " return 'typofree'
        " return 'bubblegum'
        " return 'apprentice'
        " return 'gruvbox-dark'

        " return 'seoul256'
        " return 'zenburn'
        " return 'last256'
        " return 'outsider'
        " return 'fadedvision'
    endif
endfunction
" }}}

" chi {{{
function! s:chi_colo(chi)
    if a:chi ==# 'technodrome'
        return s:static_colo
    elseif a:chi ==# 'ship'
        return s:static_colo
    elseif a:chi ==# 'girl'
        return 'deepblue'
    elseif a:chi ==# 'silk'
        return s:static_colo
    elseif a:chi ==# 'smuggler'
        return 'hell'
    elseif a:chi ==# 'druid'
        return s:static_colo
    elseif a:chi ==# 'fox'
        return 'thief'
    elseif a:chi ==# 'motor'
        return s:static_colo
    elseif a:chi ==# 'doc'
        return s:static_colo
    elseif a:chi ==# 'gums'
        return s:static_colo
    elseif a:chi ==# 'zepp'
        return s:static_colo
    elseif a:chi ==# 'temple'
        return s:static_colo
    else
        " Unrecognized non-empty $CHI
        return 'desert'
    endif
endfunction
" }}}

" gui {{{
let s:gui_colo = 'freya'
" let s:gui_colo = 'pyte'
" let s:gui_colo = 'seoul256'
" let s:gui_colo = 'seoul256-light'
" let s:gui_colo = 'hybrid'
" let s:gui_colo = 'sceaduhelm'
" let s:gui_colo = 'zenburn'
" let s:gui_colo = 'jabeigemod'
" let s:gui_colo = 'base16-atelierdune'
" let s:gui_colo = 'revolutionsmod'
" let s:gui_colo = 'badwolf'
" let s:gui_colo = 'gruvbox'
" let s:gui_colo = 'github'
" }}}

if has('gui_running')
    autocmd .colors VimEnter * call colorpolice#select(s:gui_colo)
    " font {{{
    " set guifont=Liberation\ Mono\ 22
    " set guifont=Liberation\ Mono\ 8
    " set guifont=Monospace\ 10
    set guifont=Iosevka\ SS04\ 13
    " }}}
else
    set t_Co=256

    if !empty($CHI)
        autocmd .colors VimEnter * call colorpolice#select(s:chi_colo($CHI))
    else
        autocmd .colors VimEnter * call colorpolice#select(s:static_colo)
    endif
endif
