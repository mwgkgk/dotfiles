# vim:ft=sh

alias ls='ls --color=auto -aF'
alias grep='grep --color=auto'
alias ag='ag --hidden'
alias tmu='tmux -2'
alias tmux='tmux -2'
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"
alias pp="ps aux | grep -v grep | grep -i -e VSZ -e"
alias cal="cal -3m"
alias myip="curl http://ipecho.net/plain; echo"
# alias b="bc -l <<< "
alias m="task"
alias so="xrdb ~/.Xresources && source ~/.zshrc"
alias so-nvm="source /usr/share/nvm/init-nvm.sh"
alias yesorno="perl -e 'print int rand 2, \"\n\"; '"
alias kk="pkill -fi"

# alias g='googler --count 5'
alias g='git'
alias gp="git pull"
alias df='pydf'
alias emacs="emacs --no-window-system"
alias feh="feh -d."
alias rtor="rtorrent"
alias ptp="ptpython"
alias ptp2="ptpython2"
alias ptp3="ptpython"
alias ipy="ipython --pprint"
alias bpy="bpython"
alias idr="idris"
alias rkt="racket"

alias ali='v ~/.bash_aliases , ~/.local.bashrc'
alias v-empty="vim -u ~/.empty.plugs.vimrc"
alias vl="v last"
alias vcol="v col"
alias dotf="v dotf"
alias sv='sudo -E v'
alias man="viman"
# alias vv='tmux split-window -h -c "#{pane_current_path}" -p 70 v'
alias wip="git --git-dir=.wip --work-tree=."
alias nd="nodemon --watch src/ --ext elm --exec make"
alias tree="tree -atrhn --du --filelimit 20"
alias do-thing="source ~/bin/do-thing.sh"
alias dt="source ~/bin/do-thing.sh"
alias thing="source ~/bin/thing.sh"
alias thing-to-the="source ~/bin/thing-to-the.sh"
alias the-to-thing="source ~/bin/the-to-thing.sh"

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias c-='cd -'
alias cc='c $_'
# alias vv='v $_'

p() {
    c "$@"
    v "$_"
}

mkcd() { mkdir -p "$@" && cd "$@"; }
C() { mkdir -p "$@" && cd "$@"; }
