function! _vim_gitgutter#slurp_current_hunk()
    let l:last_commit = systemlist('git log --oneline -n 1')[0]

    if !git#remote#contains_head()
        GitGutterStageHunk

        " Requires fugitive:
        Git commit --amend --no-edit
    else
        echo "Can't amend: " . l:last_commit
    endif
endfunction
