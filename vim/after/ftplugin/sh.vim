" TODO: run in approppriate shell based on shebang
" function! s:get_shell_exec()
"    let l:shebang = 
" endfunction

nnoremap <buffer> <LocalLeader>rr :Repl<CR>

" nnoremap <buffer> X :silent .w !bash<CR>
nnoremap <buffer> X :ReplSend<CR>
vnoremap <buffer> X :ReplSend<CR>
nnoremap <buffer> <Leader>x :silent .,$w !bash<CR>
nnoremap <buffer> <M-x> :exec ':term ' . getline('.')<CR>
nnoremap <buffer> <Space>x :silent %w !bash<CR>

" TODO C-x motion
