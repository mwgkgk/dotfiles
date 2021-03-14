#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

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

if cat /etc/issue | grep -q "Ubuntu"; then
    PLATFORM=ubuntu
elif [ -f "/etc/arch-release" ]; then
    PLATFORM=arch
fi
# This line is not in .bashrc cuz dwm-menu needs it here. Or does it?
export PATH="${PATH}:${HOME}/bin:/usr/local/bin"

export GOPATH="${HOME}/go"

if [ $PLATFORM == "ubuntu" ]; then
    # This is recommended upstream
    # GOROOT=/usr/local/go
    # This is what I found with find /usr -name "go" -type d
    export GOROOT=/usr/share/go-1.13/

    # PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
    export PATH=$PATH:/usr/lib/go-1.13/bin:$GOPATH/bin
fi
