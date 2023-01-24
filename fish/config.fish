# ||
# || Path & umask
# ||

set -x PATH ~/bin /usr/local/bin ~/.local/bin ~/.cargo/bin ~/.node_modules/bin ~/go/bin ~/buns ~/.nimble/bin ~/.gem/ruby/3.0.0/bin ~/pkg/sbin ~/pkg/bin $PATH

umask 0007

# ||
# || Colors
# ||

# Lab / Hawk
# set -x fish_color_prompt B5FFCE
# set -x fish_color_cwd 7CFFAA
# set -x fish_command_timer_color 82826E

# Science
# set -x fish_color_prompt 383838
# set -x fish_color_cwd C4A980
# set -x fish_command_timer_color C4C4C4
# set -x fish_command_timer_success_color C4C4C4
# set -x fish_command_timer_fail_color C4C4C4

# Thief/JP
# set -x fish_color_prompt FFFF42
# set -x fish_color_cwd EC9932
# # Keep in mind: these bad boys implicitly use 256 colors:
# set -x fish_command_timer_color 875F87
# set -x fish_command_timer_success_color 875F87
# set -x fish_command_timer_fail_color 875F87

# Freeform
set -x fish_color_prompt DFDFDF
set -x fish_color_cwd FFFFFF
# Keep in mind: these bad boys implicitly use 256 colors:
set -x fish_command_timer_color C4C4C4
set -x fish_command_timer_success_color C4C4C4
set -x fish_command_timer_fail_color C4C4C4

# ||
# || Envs
# ||

# Editor
set -x EDITOR "v"

# FZF
set -x FZF_DEFAULT_COMMAND "fd --type f --follow --hidden --exclude .git"
set -x FZF_DEFAULT_OPTS " --bind 'ctrl-q:select-all+accept,tab:print-query'"

# OPAM configuration
# source $HOME/.opam/opam-init/init.fish > /dev/null 2> /dev/null; or true

# NPM
set -x npm_config_prefix ~/.node_modules

# Carp
set -x CARP_DIR ~/.ghq/github.com/carp-lang/Carp/

# Perl
eval (perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)

# Haskell
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH $HOME/.ghcup/bin # ghcup-env

# Ruby
status --is-interactive; and rbenv init - fish | source
