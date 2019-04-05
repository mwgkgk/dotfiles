set -x PATH ~/bin ~/.local/bin ~/.cargo/bin $PATH

umask 0007

set -x fish_color_cwd B1D06E
set -x fish_command_timer_color A7A6DE

set -x FZF_DEFAULT_COMMAND "fd --type f --follow --hidden --exclude .git"
set -x FZF_DEFAULT_OPTS " --bind 'ctrl-a:select-all+accept,tab:print-query'"\
                        " --history=~/.fzf_history"

# eval (perl -I ~/perl5/lib/perl5/ -Mlocal::lib)

# OPAM configuration
source /home/mitnick/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
