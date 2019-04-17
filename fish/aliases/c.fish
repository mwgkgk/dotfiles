# Defined in - @ line 0
function c --description 'alias c cd'
  if test -d $argv[1]
    cd $argv[1]
  else if test -d "$HOME/code/$argv[1]"
    cd "$HOME/code/$argv[1]"
else if test -d "$HOME/shop/$argv[1]"
    cd "$HOME/shop/$argv[1]"
  else
    set -l matching_dirs (find ./ -maxdepth 1 -type d -iname "*$argv[1]*")
    if test (count $matching_dirs) = 1
      cd $matching_dirs[1]
    end
  end
end
