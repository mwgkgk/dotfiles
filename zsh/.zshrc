#!/bin/zsh

PATH="${PATH}:${HOME}/bin:/usr/local/bin"

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

bindkey "\033[1~" beginning-of-line
bindkey "\033[4~" end-of-line
bindkey "\033[3~" delete-char
bindkey -s "" 'fg\n'
bindkey "â" backward-word
bindkey "æ" forward-word
bindkey "ä" kill-word

zstyle ':completion:*' completer _expand _complete _files _correct _approximate

disable r

setopt noequals

# The following lines were added by compinstall
zstyle :compinstall filename "${HOME}/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

export PS1="%F{156}[%n@%m %j %f%F{179}%~%f%F{156} ]%f%F{179}\$%f "
# eval `dircolors ~/.zplug/repos/seebi/dircolors-solarized/dircolors.ansi-dark`

# Check if zplug is installed
if [[ ! -d ~/.zplug ]]; then
    git clone https://github.com/zplug/zplug ~/.zplug
    source ~/.zplug/init.zsh && zplug update --self
fi

source ~/.zplug/init.zsh

zplug "zplug/zplug", hook-build:'zplug --self-manage'

zplug "chrissicool/zsh-256color"

zplug "zsh-users/zsh-autosuggestions"

zplug "zsh-users/zsh-syntax-highlighting", if:"[[ $ZSH_EVAL_CONTEXT == 'file' ]]" # {{{

typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=82'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=194'
ZSH_HIGHLIGHT_STYLES[alias]='fg=226'
ZSH_HIGHLIGHT_STYLES[function]='fg=170'
ZSH_HIGHLIGHT_STYLES[path]='fg=179'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=80,bold'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=230,bold'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=243'

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

LS_COLORS='di=0;91:ex=95:ln=93'; export LS_COLORS
# }}}


# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi


# Then, source plugins and add commands to $PATH
zplug load

source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

source ~/.bash_aliases
source ~/.local.bashrc
source ~/.zsh_aliases
