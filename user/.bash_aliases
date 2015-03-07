# vim:ft=sh

alias ls='ls --color=auto -F'
alias grep='grep --color=auto'
alias tmux='tmux -2'
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"
alias cal="cal -3m"
alias myip="curl http://ipecho.net/plain; echo"
alias b="bc -l <<< "
alias m="make"
alias so="xrdb ~/.Xresources && source ~/.bashrc"

alias df='pydf'
alias fm="vifm"
alias emacs="emacs --no-window-system"
alias feh="feh -d."
