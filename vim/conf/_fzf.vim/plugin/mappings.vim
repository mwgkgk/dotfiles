
"
"
" Help
"

nnoremap H :FzfHelptags<CR>

"
"
" Files
"

" Files in cwd:
nnoremap ss :FzfFilesWithPreview .<CR>

" Files in parent dir:
nnoremap sw :FzfFilesWithPreview ../<CR>

" Files in current buffer's dir:
nnoremap se :FzfFilesWithPreview <C-R>=expand('%:p:h')<CR><CR>

" Files in current buffer's parent dir:
nnoremap sr :FzfFilesWithPreview <C-R>=expand('%:p:h:h')<CR><CR>


" Select from recently opened files:
nnoremap s' :FzfHistory<CR>

" Select from arglist (see ./commands.vim):
nnoremap s. :FzfArgs<CR>

"
"
" Buffers
"

" Switch to a buffer (including by number):
nnoremap s<Space> :FzfBuffers<CR>

" Set filetype:
nnoremap st :FzfFiletypes<CR>

"
"
" Tags
"

" Look for closest tags file in parent dirs of the current file:
nnoremap sz :call toggle#tags#closest()<CR>:FzfTags<CR>

" Use the tags file in cwd:
nnoremap sZ :call toggle#tags#cwd()<CR>:FzfTags<CR>

" Buffer tags:
nnoremap sd :FzfBTags<CR>

"
"
" Marks
"

nnoremap sm :FzfMarks<CR>

"
"
" Navigation
"

" Select from lines in current buffer & jump:
nnoremap sj :FzfBLines<CR>

" Select from search history & search:
nnoremap s/ :FzfHistory/<CR>

"
"
" Grep
"

" Fuzzy ripgrep in cwd:
noremap sas :Rg .<CR>

" Fuzzy ripgrep in parent dir:
noremap saw :Rg ../<CR>

" Fuzzy ripgrep in current file's dir:
noremap sae :Rg <C-r>=expand('%:p:h')<CR><CR>

" Fuzzy ripgrep in parent dir to the current file:
noremap sar :Rg <C-r>=expand('%:p:h:h')<CR><CR>

"
"
" Git
"

" Select from git tracked files in current dir:
nnoremap sf :FzfGFiles<CR>

" Select from  untracked + unstaged files in current dir:
nnoremap sF :FzfGitModified<CR>

" All commits:
nnoremap sl :FzfCommits<CR>

" Current buffer commits:
nnoremap sL :FzfBCommits<CR>

" Browse git hooks:
nnoremap sgh :FzfFilesWithPreview ./.git/hooks/<CR>

"
"
" Commands
"

" Prepop from command history:
nnoremap s: :FzfHistory:<CR>

"
"
" Editing
"

" Execute a fuzzy-selected mapping:
nnoremap sM :FzfMaps<CR>

" Prepopulate with a fuzzy-selected command:
nnoremap sN :FzfCommands<CR>

" Insert a snippet:
nnoremap s<Tab> :FzfSnippets<CR>
inoremap <C-g><Tab> <C-o>:FzfSnippets<CR>

" Replace with skeleton:
nnoremap sk :call fzf#run(fzf#wrap({
    \   'dir':'~/.vim/skeletons', 
    \   'sink':'%!cat'
    \ }))<CR>
