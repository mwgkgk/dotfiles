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

function bind_ew
  cd (vifm --choose-dir - .)
  commandline -f repaint
end

function bind_eo
  cd -
  commandline -f repaint
end

function bind_eh
  cd ..
  commandline -f repaint
end

function bind_el
  # We'll change this to fzf
  ls -1
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

function fish_user_key_bindings
  bind ! bind_bang
  bind '$' bind_dollar
  bind \cg bind_fg
  bind \ew bind_ew
  bind \eo bind_eo
  bind \eh bind_eh
  bind \el bind_el
  bind \ek bind_ek
  bind \ej bind_ej
end
