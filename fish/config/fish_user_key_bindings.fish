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

function bind_fg
  commandline -f kill-whole-line
  echo ;and fg
  commandline -f repaint
end

function bind_co
  cd -
  commandline -f repaint
end

function bind_ef
  set -l cmdline (commandline)
  if test -z "$cmdline"
    fm .
    commandline -f repaint
  else
    commandline -f forward-word
  end
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
  echo ;and ls
  commandline -f repaint
end

function bind_ei
  echo ;and git status
  commandline -f repaint
end

# Fzf misc:

function bind_ew
  fd -t d "" ~ | fzf +m --height 15 --reverse | read -l result
  and cd $result
  commandline -f repaint
end

function bind_ee
  fd -t d | fzf +m --height 15 --reverse | read -l result
  and cd $result
  commandline -f repaint
end

function bind_cr
  set -l cmdline (commandline)
  history -z | fzf +m --height 15 --reverse --toggle-sort=ctrl-r --read0 --tiebreak=index -q "$cmdline" | perl -pe 'chomp if eof' | read -lz result
  and commandline -- $result
  commandline -f repaint
end

function bind_ed
  set -l cmdline (commandline)
  if test -z "$cmdline"
    find-dots | fzf +m --height 15 --reverse | read -l result
    and commandline -- "v $result" ;and commandline -f execute
    commandline -f repaint
  else
    commandline -f kill-word
  end
end

function bind_ev
  fd -t f --hidden | fzf +m --height 15 --reverse | read -l result
  and commandline -- "v $result" ;and commandline -f execute
  commandline -f repaint
end

function bind_er
  warlock --siblings | fzf +m --height 15 --reverse | read -l result
  and cd $result
  commandline -f repaint
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

function fish_user_key_bindings
  # Emulate bash: !!, !$
  bind ! bind_bang
  bind '$' bind_dollar

  # C-g to fg
  bind \cg bind_fg
  # C-o to jump back
  bind \co bind_co
  # M-f to open fm . or forward-word
  bind \ef bind_ef

  # M- HJKL-navigation:
  bind è bind_eh
  bind ì bind_el
  bind ê bind_ej
  bind ë bind_ek

  # M-o to ls
  bind \eo bind_eo
  # M-i to git status
  bind \ei bind_ei

  # M-w to fzf-cd from ~
  bind ÷ bind_ew
  # M-e to fzf-cd from .
  bind å bind_ee
  # C-r to fzf-history
  bind \cr bind_cr
  # M-d to fzf through dotfiles, or kill-word
  bind ä bind_ed
  # M-v to fzf-vim .
  bind \ev bind_ev
  # M-r to fzf through siblings
  bind ò bind_er

  # Move \ee to \ec
  bind \ec edit_command_buffer

  # Special CR
  bind \r bind_enter
  bind \n bind_enter
end
