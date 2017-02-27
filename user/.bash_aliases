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
alias m="make"
alias so="xrdb ~/.Xresources && source ~/.bashrc"
alias so-nvm="source /usr/share/nvm/init-nvm.sh"
alias yesorno="perl -e 'print int rand 2, \"\n\"; '"
alias kk="pkill -fi"

alias df='pydf'
alias fm="vifm"
alias emacs="emacs --no-window-system"
alias feh="feh -d."
alias rtor="rtorrent"
alias ptp="ptpython"
alias ptp2="ptpython2"
alias ptp3="ptpython"
alias idr="idris"

alias ali='v ~/.bash_aliases , ~/.local.bashrc'
alias v-empty="vim -u ~/.empty.plugs.vimrc"
alias vl="v last"
alias vcol="v col"
alias sv='sudo -E v'
alias man="viman"
alias vv='tmux split-window -h -c "#{pane_current_path}" -p 70 v'
alias wip="git --git-dir=.wip --work-tree=."
alias er="elm-reactor --port 8420"
alias er2="elm-reactor --port 8430"
alias nd="nodemon --watch src/ --ext elm --exec make"
alias tree="tree -atrhn --du --filelimit 20"

alias ..='cd ..'
alias ...='cd ...'
alias ....='cd ....'
alias c-='cd -'
