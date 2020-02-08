
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


function! _vim_gitgutter#stage_current_hunk()
    if &modified
        echo 'Buffer has unwritten changes'
        return
    endif

    if empty(_vim_gitgutter#current_hunk())
        echo 'No hunk under cursor'
        return
    endif

    GitGutterStageHunk
endfunction

function! _vim_gitgutter#slurp_current_hunk()
    if &modified
        echo 'Buffer has unwritten changes'
        return
    endif

    if git#diff#has_staged_changes()
        echo 'There are staged changes'
        return
    endif

    if empty(_vim_gitgutter#current_hunk())
        echo 'No hunk under cursor'
        return
    endif

    if !git#remote#contains_head()
        GitGutterStageHunk

        if system#success('git commit --amend --no-edit')
            echo 'Modified ' . git#log#last_commit()
        endif
    else
        echo "Can't amend: " . git#log#last_commit()
    endif
endfunction

function! _vim_gitgutter#stage_commit_current_hunk()
    if &modified
        echo 'Buffer has unwritten changes'
        return
    endif

    if git#diff#has_staged_changes()
        echo 'There are staged changes'
        return
    endif

    if empty(_vim_gitgutter#current_hunk())
        echo 'No hunk under cursor'
        return
    endif

    GitGutterStageHunk

    " Requires fugitive:
    Git commit -v
endfunction

function! _vim_gitgutter#stage_commit_current_hunk_with_message_from_form()
    if &modified
        echo 'Buffer has unwritten changes'
        return
    endif

    if git#diff#has_staged_changes()
        echo 'There are staged changes'
        return
    endif

    if empty(_vim_gitgutter#current_hunk())
        echo 'No hunk under cursor'
        return
    endif

    " Yank ambient form: <Plug>(sexp_outer_list)
    " Which is sexp#select_current_list from ~/plugs/vim-sexp/autoload/sexp.vim
    " Trying to use the actual function doesn't seem to be worth it.
    normal yaf

    GitGutterStageHunk

    if git#commit#with_message(git#commit#flatten_message(getreg('"')))
        echo 'Commit ' . git#log#last_commit()
    endif
endfunction


function! _vim_gitgutter#stage_commit_current_hunk_with_message_from_line()
    if &modified
        echo 'Buffer has unwritten changes'
        return
    endif

    if git#diff#has_staged_changes()
        echo 'There are staged changes'
        return
    endif

    if empty(_vim_gitgutter#current_hunk())
        echo 'No hunk under cursor'
        return
    endif

    " Yank ambient form: <Plug>(sexp_outer_list)
    " Which is sexp#select_current_list from ~/plugs/vim-sexp/autoload/sexp.vim
    " Trying to use the actual function doesn't seem to be worth it.
    normal yy

    GitGutterStageHunk

    if git#commit#with_message(git#commit#flatten_message(getreg('"')))
        echo 'Commit ' . git#log#last_commit()
    endif
endfunction
