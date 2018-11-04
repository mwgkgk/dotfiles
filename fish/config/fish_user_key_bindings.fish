function bind_bang
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end

function bind_dollar
  switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i '$'
  end
end

function bind_tab
  set -l cmdline (commandline)
  if test -z "$cmdline"
    commandline -i "d "
  else if test "$cmdline" = "d "
    commandline -f execute
  else
    commandline -f complete
  end
end

function bind_enter
  set -l cmdline (commandline)
  if test -z (string trim "$cmdline")
    echo ;and fg
    commandline -f repaint
  else
    commandline -f execute
  end
end

function bind_cg
  commandline -r "guile"
  commandline -f execute
end

function bind_co
  cd -
  commandline -f repaint
end

function bind_f2
  fm --choose-dir - | read -l result
  and cd $result
  commandline -f repaint
end

# HJKL-navigation:

function bind_eh
  cd ..
  commandline -f repaint
end

function bind_el
  set -l pwd_basename (basename $PWD)
  find ./ -mindepth 1 -maxdepth 1 -type d | env LC_ALL=C sort | tail -n 1 | read -l result
  and cd $result
  commandline -f repaint
end

function bind_ej
  set -l pwd_basename (basename $PWD)
  cd (find ../ -mindepth 1 -maxdepth 1 -type d | env LC_ALL=C sort | grep -A1 -F /$pwd_basename | tail -n 1)
  commandline -f repaint
end

function bind_ek
  set -l pwd_basename (basename $PWD)
  cd (find ../ -mindepth 1 -maxdepth 1 -type d | env LC_ALL=C sort | grep -B1 -F /$pwd_basename | head -n 1)
  commandline -f repaint
end

function bind_eo
  echo ;and exa -a --group-directories-first
  commandline -f repaint
end

function bind_ei
  echo ;and git status
  commandline -f repaint
end

# Fzf misc:

function bind_ec
  fd -t f --hidden -E .git/ | fzf +m --height 15 --reverse | read -l result
  and commandline -- "bat $result" ;and commandline -f execute
  commandline -f repaint
end

function bind_eso
  echo ;and exa -l --git-ignore --sort modified --reverse --group-directories-first --tree --level 2 --time-style long-iso --binary --color=always | less -FR
  commandline -f repaint
end

function bind_fzf_cd_from_home
  fd -t d "" ~ | fzf +m --height 15 --reverse | read -l result
  and cd $result
  commandline -f repaint
end

function bind_fzf_cd_from_shop
  fd -t d "" ~/shop | fzf +m --height 15 --reverse | read -l result
  and cd $result
  commandline -f repaint
end

function bind_ee
  fd -t d | fzf +m --height 15 --reverse | read -l result
  and cd $result
  commandline -f repaint
end

function bind_er
  warlock --siblings | fzf +m --height 15 --reverse | read -l result
  and cd $result
  commandline -f repaint
end

function bind_cr
  set -l cmdline (commandline)
  history -z | fzf +m --height 15 --reverse --toggle-sort=ctrl-r --read0 --tiebreak=index -q "$cmdline" | perl -pe 'chomp if eof' | read -lz result
  and commandline -- $result
  commandline -f repaint
end

function bind_fzf_vim
  fd -t f --hidden -E .git/ | fzf +m --height 15 --reverse | read -l result
  and commandline -- "v $result" ;and commandline -f execute
  commandline -f repaint
end

function bind_ed
  set -l cmdline (commandline)
  if test -z "$cmdline"
    fd --type file --hidden --exclude .git "" ~/code/dotfiles/ | fzf +m --height 15 --reverse | read -l result
    and commandline -- "v $result" ;and commandline -f execute
    commandline -f repaint
  else
    commandline -f kill-word
  end
end

function bind_esd
  set -l cmdline (commandline)
  if test -z "$cmdline"
    fd --type file --hidden --follow -d 1 ".*" ~ | fzf +m --height 15 --reverse | read -l result
    and commandline -- "v $result" ;and commandline -f execute
    commandline -f repaint
  else
    commandline -f kill-word
  end
end

function bind_eb
  set -l cmdline (commandline)
  if test -z "$cmdline"
    fd --type file --hidden --exclude .git "" ~/bin/ | fzf +m --height 15 --reverse | read -l result
    and commandline -- "v $result" ;and commandline -f execute
    commandline -f repaint
  else
    commandline -f backward-word
  end
end

function bind_eg
  set -l cmdline (commandline)
  if test -z "$cmdline"
    fd --type file --hidden --exclude .git "" ~/org/ | fzf +m --height 15 --reverse | read -l result
    and commandline -- "v $result" ;and commandline -f execute
    commandline -f repaint
  else
    commandline -f kill-word
  end
end

function bind_ef
  set -l cmdline (commandline)
  if test -z "$cmdline"
    fd --type file --hidden --exclude .git "" ~/shop/ | fzf +m --height 15 --reverse | read -l result
    and commandline -- "v $result" ;and commandline -f execute
    commandline -f repaint
  else
    commandline -f forward-word
  end
end

function fish_user_key_bindings
  # Emulate bash: !!, !$
  bind ! bind_bang
  bind '$' bind_dollar

  # Special tab
  bind \t bind_tab

  # Special CR
  bind \r bind_enter
  bind \n bind_enter

  # C-g to repl
  bind \cg bind_cg

  # C-o to jump back
  bind \co bind_co
  # F2 to fm .
  bind -k f2 bind_f2

  # M- HJKL-navigation:
  bind è bind_eh
  bind ì bind_el
  bind ê bind_ej
  bind ë bind_ek

  # M-o to ls
  bind \eo bind_eo
  # M-S-o to exa -l --sort modified --tree
  bind Ï bind_eso
  # M-i to git status
  bind \ei bind_ei
  # M-c to cat
  bind \ec bind_ec

  # M-~ to also fzf-cd from ~
  bind à bind_fzf_cd_from_home
  # M-w to fzf-cd from ~/shop/
  bind ÷ bind_fzf_cd_from_shop
  # M-e to fzf-cd from .
  bind å bind_ee
  # M-r to fzf through siblings
  bind ò bind_er

  # C-r to fzf-history
  bind \cr bind_cr

  # M-v to fzf-vim .
  bind \ev bind_fzf_vim
  # M-d to fzf through dotfile folder, or kill-word
  bind ä bind_ed
  # M-S-d to fzf through dotfiles in ~/, or kill-word
  bind Ä bind_esd
  # M-b to fzf-vim ~/bin
  bind \eb bind_eb
  # M-g to fzf-vim ~/org
  bind ç bind_eg
  # M-f to fzf-vim ~/shop or forward-word
  bind æ bind_ef

  # Move \ee to \ex
  bind \ex edit_command_buffer
end
