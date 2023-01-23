" {{{
" vim: foldmethod=marker foldlevel=0
" }}}

" let s:static_colo = 'industry'
" let s:static_colo = 'heavy-industry'
" let s:static_colo = 'light-industry'
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
" let s:static_colo = 'grapes'
" let s:static_colo = 'druid'
" let s:static_colo = 'jellyfish'

" let s:static_colo = 'farout'
" let s:static_colo = 'fahrenheit'
" let s:static_colo = 'shady'
" let s:static_colo = 'hemisu-dark'
" let s:static_colo = 'hemisu-light'
" let s:static_colo = 'hawk'
" let s:static_colo = 'zorn'
" let s:static_colo = 'nil'
" let s:static_colo = 'fukuoka'
let s:static_colo = 'shenzhen'
" let s:static_colo = 'busan'
" let s:static_colo = 'stalker'

" let s:static_colo = 'gentooish'
" let s:static_colo = 'xoria256'
" let s:static_colo = 'peaksea_mod'
" let s:static_colo = 'flatlandia'

" let s:static_colo = 'nuclear'
" let s:static_colo = 'nuclear-dark'
" let s:static_colo = 'fadedvision'

" Zinge
" let s:static_colo = 'calmar256-dark'

" let s:static_colo = 'hell'
" let s:static_colo = 'lecture'
" let s:static_colo = 'lecture-dark'
" let s:static_colo = 'belf'
" let s:static_colo = 'thief'
" let s:static_colo = 'dubai'
" let s:static_colo = 'hangar-lab'
" let s:static_colo = 'alien-nes'
" let s:static_colo = 'grid'

" let s:static_colo = 'Tomorrow'
" let s:static_colo = 'primary'

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
" let s:static_colo = 'sceaduhelm'

" let s:static_colo = 'kalisi-dark'

" let s:static_colo = 'apprentice'
" let s:static_colo = 'disciple'

" let s:static_colo = 'sunday256'
" let s:static_colo = 'summerfruit256'

" let s:static_colo = 'ivan'

" let s:static_colo = 'mwgkgk'
" let s:static_colo = 'moot'
" let s:static_colo = 'blue'

" let s:static_colo = 'seoul256-light'
" let s:static_colo = 'seoul256-dark'

" let s:static_colo = 'solarized-light'
" let s:static_colo = 'gruvbox-light'
" let s:static_colo = 'autumn'
" let s:static_colo = 'autumnleaf'
" let s:static_colo = 'acme'
" let s:static_colo = 'fogbell_light'
" let s:static_colo = 'machinery'

" let s:static_colo = 'SerialExperimentsLain'
" let s:static_colo = 'arcadia'
" let s:static_colo = 'nighted'

" let s:static_colo = 'jellybeans'
" let s:static_colo = 'ufo'

" let s:static_colo = 'lucius-light'
" let s:static_colo = 'hybrid-light'

" let s:static_colo = 'lucius-dark'
" let s:static_colo = 'luciusmod'

" let s:static_colo = 'morning'

" let s:static_colo = 'gruvbox-dark'
" let s:static_colo = 'miramare'
" let s:static_colo = 'paramount-light'
" let s:static_colo = 'lunaperche-dark'

" gui {{{
" let s:gui_colo = 'freya'
" let s:gui_colo = 'pyte'
" let s:gui_colo = 'seoul256'
" let s:gui_colo = 'seoul256-light'
" let s:gui_colo = 'hybrid'
" let s:gui_colo = 'sceaduhelm'
" let s:gui_colo = 'zenburn'
" let s:gui_colo = 'jabeigemod'
" let s:gui_colo = 'base16-atelierdune'
" let s:gui_colo = 'base16-atelierseaside-light'
" let s:gui_colo = 'revolutionsmod'
" let s:gui_colo = 'badwolf'
" let s:gui_colo = 'gruvbox'
let s:gui_colo = 'SerialExperimentsLain'
" let s:gui_colo = 'github'
" }}}

if has('gui_running')
    call colorpolice#select(s:gui_colo)
else
    set t_Co=256

    if !empty($CHI)
        call colorpolice#select(colors#chi_colo($CHI, s:static_colo))
    else
        call colorpolice#select(s:static_colo)
    endif
endif
