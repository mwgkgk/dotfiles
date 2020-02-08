function! _vim_fugitive#stage_and_commit_current_file()
    if &modified
        echo 'Buffer has unwritten changes'
        return
    endif

    let l:file = expand('%')

    if git#diff#is_untracked(l:file)
        call system('git add ' . l:file)
    elseif !git#diff#has_changes_in_file(l:file)
        echo 'No changes in current file'
        return
    endif

    exec 'Git commit -v ' . l:file
endfunction

function! _vim_fugitive#stage_and_commit_untracked_file(fpath)
    " This uses system() and not :Git because fugitive's async commands don't
    " compose.
    call system('git add ' . a:fpath)

    exec 'Git commit ' . a:fpath . ' -e -m "Add ' . a:fpath . '"'
endfunction

function! _vim_fugitive#cautious_amend()
    let l:last_commit = git#log#last_commit()

    if !git#remote#contains_head()
        Git commit --amend
    else
        echo "Can't amend: " . l:last_commit
    endif
endfunction

function! _vim_fugitive#cautious_amend_no_edit()
    let l:last_commit = git#log#last_commit()

    if !git#remote#contains_head()
        Git commit --amend --no-edit
    else
        echo "Can't amend: " . l:last_commit
    endif
endfunction
