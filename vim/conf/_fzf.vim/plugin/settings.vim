let g:fzf_command_prefix = 'Fzf'

" Currently bugged with rooter cd, see here:
" https://github.com/junegunn/fzf.vim/issues/1298
" let g:fzf_layout = { 'down': '~20%' }

let g:fzf_layout = { 'window': { 'width': 0.7, 'height': 0.6 } }

let g:fzf_action = {
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-s': 'split',
            \ 'ctrl-v': 'vsplit',
            \ 'ctrl-e': 'edit'}

let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }

let g:fzf_history_dir = '~/.local/share/fzf-history'

let g:fzf_buffers_jump = 1

" Weird input lag,
" see https://github.com/junegunn/fzf.vim/issues/1011
if has('nvim') && has('win32')
    let g:fzf_preview_window=''
endif
