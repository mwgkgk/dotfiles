function! git#remote#contains_head()
    let l:head_commit = systemlist('git rev-parse HEAD')[0]

    return len(systemlist('git branch -r --contains ' . l:head_commit))
endfunction
