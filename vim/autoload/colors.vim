function! colors#flex_colo()
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

function! colors#chi_colo(chi, static_colo)
    if a:chi ==# 'march'
        return a:static_colo
    elseif a:chi ==# 'minerals'
        return a:static_colo
    elseif a:chi ==# 'forgepriest'
        return a:static_colo
    elseif a:chi ==# 'ship'
        return a:static_colo
    elseif a:chi ==# 'tower'
        return 'heavy-industry'
    elseif a:chi ==# 'hobbit'
        return a:static_colo
    elseif a:chi ==# 'girl'
        return 'hangar-lab'
    elseif a:chi ==# 'silk'
        return a:static_colo
    elseif a:chi ==# 'will'
        return a:static_colo
    elseif a:chi ==# 'smuggler'
        return a:static_colo
    elseif a:chi ==# 'outlaw'
        return a:static_colo
    elseif a:chi ==# 'junglebook'
        return a:static_colo
    elseif a:chi ==# 'fox'
        return 'thief'
    elseif a:chi ==# 'motor'
        return a:static_colo
    elseif a:chi ==# 'bridge'
        return a:static_colo
    elseif a:chi ==# 'brahmin'
        " return 'thief'
        return a:static_colo
    elseif a:chi ==# 'tianxia'
        return a:static_colo
    elseif a:chi ==# 'pratyekabuddha'
        return a:static_colo
    elseif a:chi ==# 'arrakis'
        return a:static_colo
    elseif a:chi ==# 'ice'
        return a:static_colo
    elseif a:chi ==# 'endless-fortress'
        return a:static_colo
    elseif a:chi ==# 'gums'
        return a:static_colo
    elseif a:chi ==# 'zepp'
        return a:static_colo
    elseif a:chi ==# 'temple'
        return a:static_colo
    else
        " Unrecognized non-empty $CHI
        return 'desert'
    endif
endfunction
