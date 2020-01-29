function! _vim_fugitive#stage_and_commit_untracked_file(fpath)
    " This uses system() and not :Git because fugitive's async commands don't
    " compose.
    call system('git add ' . a:fpath)

    exec 'Git commit ' . a:fpath . ' -e -m "Add ' . a:fpath . '"'
endfunction

function! _vim_fugitive#cautious_amend()
    let l:last_commit = systemlist('git log --oneline -n 1')[0]

    if !git#remote#contains_head()
        Git commit --amend
    else
        echo "Can't amend: " . l:last_commit
    endif
endfunction

function! _vim_fugitive#cautious_amend_no_edit()
    let l:last_commit = systemlist('git log --oneline -n 1')[0]

    if !git#remote#contains_head()
        Git commit --amend --no-edit
    else
        echo "Can't amend: " . l:last_commit
    endif
endfunction

function! _vim_fugitive#checkout_branch(dirty_name)
    let l:branch = substitute(a:dirty_name,'^\s\+\*\?\s\?', '', 'g')

    " Running this requires an extra keypress (like anything with Fugitive)
    " but calling this function as a fzf sink obscures the confirmation
    " window, so the whole situation is extra ugly.
    exec 'Git checkout ' . l:branch
endfunction
