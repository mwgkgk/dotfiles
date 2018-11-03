set -x PATH ~/bin ~/.cargo/bin $PATH

set -x fish_color_cwd af8787
set -x fish_command_timer_color 9F7010

set -x FZF_DEFAULT_COMMAND "fd --type f --follow --hidden --exclude .git"
set -x FZF_DEFAULT_OPTS ""

# eval (perl -I ~/perl5/lib/perl5/ -Mlocal::lib)

# OPAM configuration
source /home/mitnick/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true
