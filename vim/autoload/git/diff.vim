function! git#diff#has_staged_changes()
    call system('git diff --cached --quiet --exit-code')
    return v:shell_error
endfunction
