function! git#popup#status()
    if has('nvim')
        lua require('git.popup').status()
        return
    endif

    if exists('b:git_status_popup')
        " Using win_id2win() never returns anything but 0 for this window, so
        " unfortunately we can't use it to guard against dead windows.
        " On the plus side, popup_close fails silently.
        call popup_close(b:git_status_popup)
    endif

    let l:git_status = systemlist('git status -s -u')
    let l:current_branch = systemlist('git rev-parse --abbrev-ref HEAD')[0]
    let l:commit_log = systemlist('git log --oneline origin/' .
                \ l:current_branch . '..HEAD')

    let l:popup_text = ''

    if len(l:git_status)
        let l:popup_text = l:git_status
    endif

    if len(l:commit_log)
        if len(l:popup_text)
            let l:popup_text = l:popup_text + [" "] + l:commit_log
        else
            let l:popup_text = l:commit_log
        endif
    endif

    if !len(l:popup_text)
        let l:popup_text = 'No changes on ' . l:current_branch
    endif

    " 2020-08-23: As of current year, finding information on how to succinctly
    " replace this in Neovim has had middling to low amounts of success. The
    " thing seems merged but not having docs, closest thing to an example
    " here: https://github.com/SpaceVim/SpaceVim/pull/1102/files Which creates
    " a straight up new window which is floating, and has all the buffer shit
    " in it. Merged in 2018 but nobody gives a fuck, kinda sketch at this
    " point.

    " This uses moved: [col('.'), col('.')], which allows for 1-column travel to
    " the right, to allow for insert-mode mapping (which otherwise closes the
    " dialog upon entering insert-mode).
    let b:git_status_popup = popup_create(l:popup_text,
        \ #{
        \   pos: 'topleft',
        \   line: 'cursor+1',
        \   col: 'cursor',
        \   moved: [col('.'), col('.')],
        \ })
endfunction
