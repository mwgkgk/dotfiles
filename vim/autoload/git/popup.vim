function! git#popup#status()
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
