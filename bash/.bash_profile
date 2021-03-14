#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# This line is not in .bashrc cuz dwm-menu needs it here. Or does it?
PATH="${PATH}:${HOME}/bin:/usr/local/bin"

export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
