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
alias b="bc -l <<< "
alias m="make"
alias so="xrdb ~/.Xresources && source ~/.bashrc"
alias so-nvm="source /usr/share/nvm/init-nvm.sh"
alias yesorno="perl -e 'print int rand 2, \"\n\"; '"
alias kk="pkill -fi"
alias ins="pacaur -S"
alias pac="pacaur"

alias df='pydf'
alias fm="vifm"
alias emacs="emacs --no-window-system"
alias feh="feh -d."
alias rtor="rtorrent"
alias ptp="ptpython"
alias ptp2="ptpython2"

alias ali='v ~/.bash_aliases , ~/.bashrc-local'
alias v-empty="vim -u ~/.vimrc-heavy-empty"
alias vl="v last"
alias vcol="v col"
alias sv='sudo -E v'
alias man="viman"
alias t="timer"
alias wip="git --git-dir=.wip --work-tree=."

alias ..='cd ..'
