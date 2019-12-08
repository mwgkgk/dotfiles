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

# PS1="`EXT_COLOR 172`[\u@\h \j \w ]\$${NO_COLOR} "
# PS1="[\u@\h \j \w ]\$ "
# PS1="`EXT_COLOR 202`[\u@\h \j \w ]`EXT_COLOR 174`\$${NO_COLOR} "

PS1="\! $(EXT_COLOR 247)\u@\h $(EXT_COLOR 220)\w$(EXT_COLOR 247) \j${NO_COLOR} "

LS_COLORS='di=0;32'; export LS_COLORS

export TSOCKS_CONF_FILE=$HOME/.tsocks.conf

if [ -f ~/.bash_opam ]; then
    # Tough to satisify shellcheck here because bash_opam may not exist
    # shellcheck disable=SC1090
    source ~/.bash_opam
fi

if [ -f ~/.fzf.bash ]; then
    export FZF_DEFAULT_OPTS="--reverse --inline-info -m"
    export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
    # shellcheck disable=SC1090
    source ~/.fzf.bash
fi

if [ -f ~/.bash_aliases ]; then
    # shellcheck disable=SC1090
    source ~/.bash_aliases
fi

if [ -f ~/.local.bashrc ]; then
    # shellcheck disable=SC1090
    source ~/.local.bashrc
fi

# Causes launch delay:
# if [ -f /usr/share/nvm/init-nvm.sh ]; then
#     source /usr/share/nvm/init-nvm.sh
# fi

export GOPATH="${HOME}/go"
