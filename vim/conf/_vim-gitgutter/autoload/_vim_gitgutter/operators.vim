function! _vim_gitgutter#operators#commit_current_hunk_with_message(motion_wiseness)
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

    if s:is_empty_region()
      return
    endif

    " Save cursor position for linewise motion like 'yj'.
    if a:motion_wiseness is# 'line'
      let w = winsaveview()
    endif

    let visual_command = operator#user#visual_command_from_wise_name(a:motion_wiseness)
    let start = [line("'["), virtcol("'[")]
    let end = [line("']"), virtcol("']")]
    let pattern = vital#_operator_flashy#Coaster#Search#pattern_by_range(visual_command, start, end)

    normal! `[yv`]

    GitGutterStageHunk

    if git#commit#with_message(git#commit#flatten_message(getreg('"')))
        echo 'Commit ' . git#log#last_commit()

        call operator#flashy#flash(pattern, g:operator#flashy#flash_time)
    endif
endfunction

" Reason this function resides in conf/_vim_gitgutter is that we need to
" update the signs for the current buffer.
function! _vim_gitgutter#operators#commit_file_with_message(motion_wiseness)
    if &modified
        echo 'Buffer has unwritten changes'
        return
    endif

    if git#diff#has_staged_changes()
        echo 'There are staged changes'
        return
    endif

    if s:is_empty_region()
      return
    endif

    " Save cursor position for linewise motion like 'yj'.
    if a:motion_wiseness is# 'line'
      let w = winsaveview()
    endif

    let visual_command = operator#user#visual_command_from_wise_name(a:motion_wiseness)
    let start = [line("'["), virtcol("'[")]
    let end = [line("']"), virtcol("']")]
    let pattern = vital#_operator_flashy#Coaster#Search#pattern_by_range(visual_command, start, end)

    normal! `[yv`]

    if !git#stage#file(expand('%'))
        " The error message is echoed from git#stage#file.
        return
    endif

    " Update signs for the current buffer:
    GitGutter

    if git#commit#with_message(git#commit#flatten_message(getreg('"')))
        echo 'Commit ' . git#log#last_commit()

        call operator#flashy#flash(pattern, g:operator#flashy#flash_time)
    endif
endfunction

function! s:is_empty_region() abort
  return line("'[") is# line("']") + 1
endfunction
