function! _nim_vim#JumpToDef()
  if exists('*GotoDefinition_' . &filetype)
    call GotoDefinition_{&filetype}()
  else
    exe 'norm! \<C-]>'
  endif
endf
