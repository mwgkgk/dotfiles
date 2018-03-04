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
  fg
  commandline -f repaint
end

function bind_co
  cd -
  commandline -f repaint
end

# hjkl navigation:

function bind_eh
  cd ..
  commandline -f repaint
end

function bind_ej
  set -l pwd_basename (basename $PWD)
  cd (find ../ -mindepth 1 -maxdepth 1 -type d | sort | grep -A1 -F $pwd_basename | tail -n 1)
  commandline -f repaint
end

function bind_ek
  set -l pwd_basename (basename $PWD)
  cd (find ../ -mindepth 1 -maxdepth 1 -type d | sort | grep -B1 -F $pwd_basename | head -n 1)
  commandline -f repaint
end

# Fzf misc:

function bind_ew
  fd -t d "" ~ | fzf +m --height 15 --reverse | read -l result
  and cd $result
  commandline -f repaint
end

function bind_ec
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
    and v $result
    commandline -f repaint
  else
    commandline -f kill-word
  end
end

function bind_ev
  fd -t f --hidden | fzf +m --height 15 --reverse | read -l result
  and v $result
  commandline -f repaint
end

function fish_user_key_bindings
  # Emulate bash: !!, !$
  bind ! bind_bang
  bind '$' bind_dollar

  # C-g to fg
  bind \cg bind_fg
  # C-o to jump back
  bind \co bind_co

  # hjkl navigation:
  bind è bind_eh
  # bind ì bind_el
  bind ê bind_ej
  bind ë bind_ek

  # M-w to fzf-cd from ~
  bind \ew bind_ew
  # M-c to fzf-cd from .
  bind \ec bind_ec
  # C-r to fzf-history
  bind \cr bind_cr
  # M-d to fzf through dotfiles, or kill-word
  bind \ed bind_ed
  # M-v to fzf-vim .
  bind \ev bind_ev
end
