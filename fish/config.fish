set -x PATH ~/bin ~/.local/bin ~/.cargo/bin $PATH

umask 0007

set -x fish_color_cwd D87CEE
set -x fish_command_timer_color 94B1AF

set -x FZF_DEFAULT_COMMAND "fd --type f --follow --hidden --exclude .git"
set -x FZF_DEFAULT_OPTS " --bind 'ctrl-a:select-all+accept,tab:print-query'"

# eval (perl -I ~/perl5/lib/perl5/ -Mlocal::lib)

# OPAM configuration
source /home/mitnick/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
