if exists('b:current_syntax')
  finish
endif

syn match GitignoreComment /^#.*$/
hi default link GitignoreComment Comment
