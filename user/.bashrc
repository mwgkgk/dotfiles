#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# $PATH is set in .bash_profile

# set -o vi

# PS1='[\u@\h \j \W]\$ '

function EXT_COLOR () { echo -ne "\[\033[38;5;$1m\]"; }
NO_COLOR="\[\033[0m\]"

# PS1="`EXT_COLOR 172`[\u@\h \j \W ]\$${NO_COLOR} "
# PS1="[\u@\h \j \W ]\$ "
# PS1="`EXT_COLOR 202`[\u@\h \j \W ]`EXT_COLOR 174`\$${NO_COLOR} "
PS1="`EXT_COLOR 177`[\u@\h \j \W ]`EXT_COLOR 174`\$${NO_COLOR} "

LS_COLORS='di=0;32'; export LS_COLORS

export TSOCKS_CONF_FILE=$HOME/.tsocks.conf

if [ -f ~/.bash_opam ]; then
    source ~/.bash_opam
fi

if [ -f ~/.fzf.bash ]; then
    export FZF_DEFAULT_OPTS="--reverse --inline-info -m"
    export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
    source ~/.fzf.bash
    bind '"\e;": " \C-e\C-u`__fzf_cd__`\e\C-e\er\C-m"'
fi

if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

if [ -f ~/.bashrc-local ]; then
    source ~/.bashrc-local
fi

# Causes launch delay:
# if [ -f /usr/share/nvm/init-nvm.sh ]; then
#     source /usr/share/nvm/init-nvm.sh
# fi

GOPATH="${HOME}/code/go"
