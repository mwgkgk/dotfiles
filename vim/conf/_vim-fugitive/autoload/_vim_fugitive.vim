function! _vim_fugitive#stage_and_commit_untracked_file(fpath)
    " This uses system() and not :Git because fugitive's async commands don't
    " compose.
    call system('git add ' . a:fpath)

    exec 'Git commit ' . a:fpath . ' -e -m "Add ' . a:fpath . '"'
endfunction
