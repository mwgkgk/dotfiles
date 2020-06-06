set -x PATH ~/bin ~/.local/bin ~/.cargo/bin ~/.node_modules/bin ~/go/bin $PATH

umask 0007

# Lab / Hawk
# set -x fish_color_prompt B5FFCE
# set -x fish_color_cwd 7CFFAA
# set -x fish_command_timer_color 82826E

# Science
set -x fish_color_prompt 383838
set -x fish_color_cwd C4A980
set -x fish_command_timer_color C4C4C4

set -x FZF_DEFAULT_COMMAND "fd --type f --follow --hidden --exclude .git"
set -x FZF_DEFAULT_OPTS " --bind 'ctrl-q:select-all+accept,tab:print-query'"

# eval (perl -I ~/perl5/lib/perl5/ -Mlocal::lib)

# OPAM configuration
source /home/mitnick/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

# NPM
set -x npm_config_prefix ~/.node_modules
