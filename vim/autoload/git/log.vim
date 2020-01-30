" In case of errors, this will return the errors as text. Which seems
" reasonable enough since the value is intended for human eyes anyways.
function git#log#last_commit()
    return systemlist('git log --oneline -n 1')[0]
endfunction
