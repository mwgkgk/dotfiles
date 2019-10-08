set -x PATH ~/bin ~/.local/bin ~/.cargo/bin ~/.node_modules/bin ~/go/bin $PATH

umask 0007

set -x fish_color_cwd CEB982
set -x fish_color_prompt C28B5B
set -x fish_command_timer_color AF875F

set -x FZF_DEFAULT_COMMAND "fd --type f --follow --hidden --exclude .git"
set -x FZF_DEFAULT_OPTS " --bind 'ctrl-a:select-all+accept,tab:print-query'"

# eval (perl -I ~/perl5/lib/perl5/ -Mlocal::lib)

# OPAM configuration
source /home/mitnick/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

# NPM
set -x npm_config_prefix ~/.node_modules
