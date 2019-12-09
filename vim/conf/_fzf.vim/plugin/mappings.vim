
"
"
" Help
"

nnoremap H :FzfHelptags<CR>

" Saved --help outputs:
nnoremap sgH :FzfFilesWithPreview ~/help/<CR>

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


" Select from recently opened files:
nnoremap s' :FzfHistory<CR>

" Select from arglist (see ./commands.vim):
nnoremap s. :FzfArgs<CR>


" Files from /tmp:
nnoremap sT :FzfFilesWithPreview /tmp/<CR>

" Everything under $HOME:
nnoremap s~ :FzfFilesWithPreview ~/<CR>

"
"
" Vim files
"

" Everything from .vim/ directory except .gitignored files:
nnoremap <M-v> :FzfFilesWithPreview ~/.vim/<CR>
nnoremap svv :FzfFilesWithPreview ~/.vim/<CR>

" Installed plugs:
nnoremap <M-S-v> :FzfFilesWithPreview ~/.vim/plugs/<CR>
nnoremap svp :FzfFilesWithPreview ~/.vim/plugs/<CR>

" Specific .vim/ dirs:
nnoremap svs :FzfFilesWithPreview ~/.vim/conf/<CR>
nnoremap sva :FzfFilesWithPreview ~/.vim/autoload/<CR>
nnoremap svfp :FzfFilesWithPreview ~/.vim/ftplugin/<CR>
nnoremap svfa :FzfFilesWithPreview ~/.vim/after/ftplugin/<CR>
nnoremap svfd :FzfFilesWithPreview ~/.vim/ftdetect/<CR>
nnoremap svu :FzfFilesWithPreview ~/.vim/usnippets/<CR>

" Edit a skeleton:
nnoremap sK :FzfFilesWithPreview ~/.vim/skeletons/<CR>

" Marvim saved macros:
nnoremap s" :FzfFilesWithPreview ~/.marvim/<CR>

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
nnoremap S :FzfBLines<CR>

" Select from search history & search:
nnoremap s/ :FzfHistory/<CR>

"
"
" Grep
"

" Fuzzy ripgrep in cwd:
noremap sa :Rg<CR>

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
nnoremap s; :FzfHistory:<CR>

"
"
" Editing
"

" Execute a fuzzy-selected map:
nnoremap sM :FzfMaps<CR>

" Insert a snippet:
nnoremap s<Tab> :FzfSnippets<CR>

" Replace with skeleton:
nnoremap sk :call fzf#run({'dir':'~/.vim/skeletons', 'sink':'%!cat', 'down': '~15%'})<CR>
