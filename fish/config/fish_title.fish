function fish_title
  set -l job_count (jobs -c | wc -l)
  if test $job_count -eq 0
    if [ "fish" != $_ ]
      tmux rename-window "$argv" 
    else
      tmux rename-window (prompt_pwd)"/\$"
    end
  end

  echo $_
end
