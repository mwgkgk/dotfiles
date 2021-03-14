#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if cat /etc/issue | grep -q "Ubuntu"; then
    PLATFORM=ubuntu
elif [ -f "/etc/arch-release" ]; then
    PLATFORM=arch
fi

# This line is not in .bashrc cuz dwm-menu needs it here. Or does it?
PATH="${PATH}:${HOME}/bin:/usr/local/bin"

if [ $PLATFORM == "ubuntu" ]; then
    GOPATH=$HOME/go
    # This is recommended upstream
    # GOROOT=/usr/local/go
    # This is what I found with find /usr -name "go" -type d
    GOROOT=/usr/share/go-1.13/

    # PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
    PATH=$PATH:/usr/lib/go-1.13/bin:$GOPATH/bin
fi
