" TODO: run in approppriate shell based on shebang
" function! s:get_shell_exec()
"    let l:shebang = 
" endfunction

" nnoremap <buffer> X :silent .w !bash<CR>
nnoremap <buffer> <Leader>x :silent .,$w !bash<CR>

" Outclassed by Reply, neoterm
" nnoremap <buffer> <M-x> :exec ':term ' . getline('.')<CR>

nnoremap <buffer> <Space>x :silent %w !bash<CR>

" TODO C-x motion
