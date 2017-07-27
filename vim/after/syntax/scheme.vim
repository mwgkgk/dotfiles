" Conceal guile header:
syn match GuileHeader1 /^#!\/usr\/bin\/guile -s\n!#/ conceal cchar=γ
syn match GuileHeader2 /^#!\/usr\/bin\/guile \\\n-e main -s\n!#/ conceal cchar=γ
setlocal conceallevel=2
