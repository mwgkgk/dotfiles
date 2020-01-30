function! git#diff#has_staged_changes()
    call system('git diff --cached --quiet --exit-code')
    return v:shell_error
endfunction

function! git#diff#has_staged_changes_in_file(file)
    call system('git diff --cached --quiet --exit-code ' . a:file )
    return v:shell_error
endfunction
