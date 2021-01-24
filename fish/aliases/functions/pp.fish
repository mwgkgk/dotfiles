function pp
  ps aux | grep -v grep | grep -i -e VSZ -e $argv
end
