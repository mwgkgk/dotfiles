
" Lifted from plugs/vim-gitgutter/autoload/gitgutter/hunk.vim to create
" graceful handling for slurp_current_hunk and friends. Relies on gitgutter's
" autoloaded functions and can be expected to break with updates.

" Returns the hunk the cursor is currently in or an empty list if the cursor
" isn't in a hunk.
function! _vim_gitgutter#current_hunk() abort
  let bufnr = bufnr('')
  let current_hunk = []

  for hunk in gitgutter#hunk#hunks(bufnr)
    if gitgutter#hunk#cursor_in_hunk(hunk)
      let current_hunk = hunk
      break
    endif
  endfor

  return current_hunk
endfunction


function! _vim_gitgutter#slurp_current_hunk()
    let l:hunk = _vim_gitgutter#current_hunk()

    if empty(l:hunk)
        echo 'No hunk under cursor'
        return
    endif

    let l:last_commit = systemlist('git log --oneline -n 1')[0]

    if !git#remote#contains_head()
        GitGutterStageHunk

        " Requires fugitive:
        Git commit --amend --no-edit
    else
        echo "Can't amend: " . l:last_commit
    endif
endfunction

function! _vim_gitgutter#stage_commit_current_hunk()
    let l:hunk = _vim_gitgutter#current_hunk()

    if empty(l:hunk)
        echo 'No hunk under cursor'
        return
    endif

    GitGutterStageHunk

    " Requires fugitive:
    Git commit -v
endfunction
