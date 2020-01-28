function! git#popup#status()
    if exists('b:git_status_popup')
        " Using win_id2win() never returns anything but 0 for this window, so
        " unfortunately we can't use it to guard against dead windows.
        " On the plus side, popup_close fails silently.
        call popup_close(b:git_status_popup)
    endif

    let l:git_status = systemlist("git status -s -u")
    let l:commit_log = systemlist("git log --oneline origin/master..HEAD")

    " This uses moved: [col('.'), col('.')], which allows for 1-column travel to
    " the right, to allow for insert-mode mapping (which otherwise closes the
    " dialog upon entering insert-mode).

    " TODO use fugitive buffer by number instead of l:git_status
    let b:git_status_popup = popup_create(l:git_status + [' '] + l:commit_log,
        \ #{
        \   pos: 'topleft',
        \   line: 'cursor+1',
        \   col: 'cursor',
        \   moved: [col('.'), col('.')],
        \ })
endfunction
