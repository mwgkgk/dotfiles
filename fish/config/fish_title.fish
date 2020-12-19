function fish_title
  # When running from Vim, don't change the title:
  if test -z "$VIM_SERVERNAME"
      set -l job_count (jobs -c | wc -l)
      if test $job_count -eq 0
        if [ "fish" != $_ ]
          test -n $TMUX ;and tmux rename-window "$argv" 
        else
          test -n $TMUX ;and tmux rename-window (prompt_pwd)"/\$"
        end
      end

  echo $_
end
