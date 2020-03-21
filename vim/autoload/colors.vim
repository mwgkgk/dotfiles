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
    if a:chi ==# 'king'
        return a:static_colo
    elseif a:chi ==# 'ship'
        return a:static_colo
    elseif a:chi ==# 'girl'
        return 'deepblue'
    elseif a:chi ==# 'silk'
        return a:static_colo
    elseif a:chi ==# 'smuggler'
        return a:static_colo
    elseif a:chi ==# 'druid'
        return a:static_colo
    elseif a:chi ==# 'fox'
        return 'thief'
    elseif a:chi ==# 'motor'
        return a:static_colo
    elseif a:chi ==# 'humvee'
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
