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

# TODO Fzf not fast enough for bind_space. fzy? homegrown fuzzy-line-suggest?
# function bind_space
#     set -l cmdline (commandline)
#     if test "$cmdline" = "v"
#         commandline -i ' '
#         fdz-v | read -l result
#         if test -n "$result"
#             commandline -i "$result"
#             commandline -f execute
#         else
#             commandline -f repaint
#         end
#   else
#       commandline -i ' '
#   end
# end

function bind_tab
    set -l cmdline (commandline)
    if test -z "$cmdline"
        fdz-file ~/.vim/sessions/ | read -l result
        if test -n "$result"
            set -l result (basename $result)
            commandline -r "v $result"
            commandline -f execute
        else
            commandline -f repaint
        end
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
      qwerty --detect-layout "$cmdline" | read -l result
      commandline -r "$result"
      commandline -f execute
  end
end

function bind_run_keep
    set -l cmdline (commandline)
    echo
    eval "$cmdline"
    commandline -f repaint
end

function bind_rerun
    commandline -t $history[1]
end

function bind_select_repl
    select-repl | read -l result
    if test -n "$result"
        commandline -r "$result"
        commandline -f execute
    else
        commandline -f repaint
    end
end

function bind_co
    cd -
    commandline -f repaint
end

function bind_f2
    fm . --choose-dir - | read -l result
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

function bind_cd_lastcmd
    set -l cmdline (commandline)
    commandline -r "cd "
    commandline -f history-token-search-backward
    commandline -f execute
end

function bind_ls_here
    echo ;and exa -a --group-directories-first
    commandline -f repaint
end

function bind_lstree_here
    echo ;and lstree .
    commandline -f repaint
end

function bind_git_status
    echo ;and git status
    commandline -f repaint
end

function bind_git_diff
    echo ;and git diff
    commandline -f repaint
end

function bind_raise
    commandline -r "raise"
    commandline -f execute
end

function bind_suh
    echo ;and suh
    commandline -f repaint
end

function bind_suh_v
    echo ;and suh -v
    commandline -f repaint
end

function bind_suck
    commandline -r "suck"
    commandline -f execute
end

function bind_git_log
    echo ;and git log -n 5
    commandline -f repaint
end

function bind_git_shortlog
    echo ;and git shortlog -e
    commandline -f repaint
end

function bind_slap
    commandline -r "slap"
    commandline -f execute
end

function bind_git_remote
    echo ;and git remote -v
    commandline -f repaint
end

function bind_git_config
    echo ;and Bat (git-root .git/config)
    commandline -f repaint
end

# Fzf misc:

function bind_bat_here
    set -l cmdline (commandline)
    if test -z "$cmdline"
        fz-preview-here | read -l result
        if test -n (string trim "$result")
            commandline -r "Bat $result"
            commandline -f execute
        end
  else
      commandline -f forward-word
  end
end

function bind_bat_git_changes
    set -l cmdline (commandline)
    if test -z "$cmdline"
        fz-preview-git-changes | read -l result
        if test -n (string trim "$result")
            commandline -r "Bat $result"
            commandline -f execute
        end
  else
      commandline -f forward-word
  end
end

function bind_fdz_dir_home
    fdz-dir ~ | read -l result
    and cd $result
    commandline -f repaint
end

function bind_fdz_dir_shop
    fdz-dir ~/shop | read -l result
    and cd $result
    commandline -f repaint
end

function bind_fdz_dir_cases
    fdz-dir ~/shop/cases | read -l result
    and cd $result
    commandline -f repaint
end

function bind_fdz_dir_ink
    fdz-dir ~/ink | read -l result
    and cd $result
    commandline -f repaint
end

function bind_fdz_dir_ghq
    fdz-dir ~/.ghq | read -l result
    and cd $result
    commandline -f repaint
end

function bind_fdz_dir_here
    fdz-dir . | read -l result
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

function bind_fz_here
    set -l cmdline (commandline)

    if test -z "$cmdline"
        return
    end

    begin
        fz-here | while read -l s;
        set results $results $s; end
    end

    if test -z "$results"
        commandline -f repaint
        return
    else
        commandline -t ""
    end

    for result in $results
        commandline -it -- (string escape $result)
        commandline -it -- " "
    end
    commandline -f repaint
end

function bind_fz_git_changes
    set -l cmdline (commandline)

    begin
        fz-git-changes | while read -l s;
        set results $results $s; end
    end

    if test -z "$results"
        commandline -f repaint
        return
    else
        commandline -t ""
    end

    for result in $results
        commandline -it -- (string escape $result)
        commandline -it -- " "
    end
    commandline -f repaint
end

function bind_v_here
    fz-here | read -l result
    and commandline -- "v $result" ;and commandline -f execute
    commandline -f repaint
end

function bind_v_git_changes
    fz-git-changes | read -l result
    and commandline -- "v $result" ;and commandline -f execute
    commandline -f repaint
end

function bind_ed
    set -l cmdline (commandline)
    if test -z "$cmdline"
        fd --type file --hidden --follow --exclude .git "" ~/dot/ | fzf +m --height 15 --reverse | read -l result
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

function bind_ecd
    fd --type file --hidden --follow --exclude .git "" ~/pants/ | fzf +m --height 15 --reverse | read -l result
    and commandline -- "v $result" ;and commandline -f execute
    commandline -f repaint
end

function bind_ev
    fd --type file --hidden --follow --exclude .git "" ~/.vim/ | fzf +m --height 15 --reverse | read -l result
    and commandline -- "v $result" ;and commandline -f execute
    commandline -f repaint
end

function bind_eb
    set -l cmdline (commandline)
    if test -z "$cmdline"
        git branch | fzf +m --height 15 --reverse | read -l result
        and commandline -- "git checkout $result" ;and commandline -f execute
        commandline -f repaint
  else
      commandline -f backward-word
  end
end

function bind_royals
    set -l cmdline (commandline)
    if test -z "$cmdline"
        fdz-royals | read -l result
        and commandline -- "sudo su - $result" ;and commandline -f execute
        commandline -f repaint
    else
        commandline -f backward-char
    end
end

function bind_fdz_guns
    fdz-guns | read -l result
    and commandline -- "v $result" ;and commandline -f execute
    commandline -f repaint
end

function bind_fdz_vim_ark
    fdz-file ~/ink/ark | read -l result
    and commandline -- "v $result" ;and commandline -f execute
    commandline -f repaint
end

function bind_fdz_vim_shop
    fdz-file ~/shop/ | read -l result
    and commandline -- "v $result" ;and commandline -f execute
    commandline -f repaint
end

function bind_fdz_vim_ink
    fdz-ink | read -l result
    and commandline -- "v $result" ;and commandline -f execute
    commandline -f repaint
end

function bind_fdz_vim_ghq
    fdz-file ~/.ghq | read -l result
    and commandline -- "v $result" ;and commandline -f execute
    commandline -f repaint
end

function fish_user_key_bindings
    # Emulate bash: !!, !$
    bind ! bind_bang
    bind '$' bind_dollar

    # Special space
    # bind ' ' bind_space

    # Special tab
    bind \t bind_tab

    # Special CR
    bind \r bind_enter
    bind \n bind_enter

    # M-CR
    bind  bind_run_keep

    # M-;
    bind » bind_rerun

    # C-g to select-repl
    bind \cg bind_select_repl

    # C-o to jump back
    bind \co bind_co
    # F2 to fm .
    # No longer supported as of 4.3.2
    # bind -k f2 bind_f2

    # M-h M-l M-j M-k HJKL-navigation:
    bind è bind_eh
    bind ì bind_el
    bind ê bind_ej
    bind ë bind_ek

    # M-S-l to cd !$
    bind Ì bind_cd_lastcmd

    # M-o to ls
    bind ï bind_ls_here
    # M-S-o to exa -l --sort modified --tree
    bind Ï bind_lstree_here

    # M-i to git status
    bind é bind_git_status
    # M-S-i to git diff
    bind É bind_git_diff
    # C-M-i to raise
    bind  bind_raise

    # M-u to suh
    bind õ bind_suh
    # M-S-u to suh -v
    bind Õ bind_suh_v
    # C-M-u to suck
    bind  bind_suck

    # M-y to git log -n <smallnumber>
    bind ù bind_git_log
    # M-S-y to git shortlog
    bind Ù bind_git_shortlog
    # C-M-y to slap
    bind  bind_slap

    # M-m to git remote -v
    bind í bind_git_remote
    # M-S-m to Bat gitconfig
    bind Í bind_git_config

    # M-f to Bat or forward-word
    bind æ bind_bat_here
    # M-S-f to Bat $(fz-preview-git-changes )
    bind Æ bind_bat_git_changes

    # M-~ to fdz-dir ~
    bind à bind_fdz_dir_home
    # M-S-s to fdz-dir ~/shop/
    bind Ó bind_fdz_dir_shop
    # M-c to fdz-dir ~/shop/cases/
    bind ã bind_fdz_dir_cases
    # M-S-x to fdz-dir ~/shop/ink/
    bind Ø bind_fdz_dir_ink
    # M-w to fdz-dir .
    bind ÷ bind_fdz_dir_here

    # M-q to fdz-file ~/.ghq/
    bind ñ bind_fdz_vim_ghq
    # M-S-q to fdz-dir ~/.ghq/
    bind Ñ bind_fdz_dir_ghq

    # M-r to fzf through siblings
    bind ò bind_er

    # C-r to fzf-history
    bind \cr bind_cr
    # C-t to append fz-here to commandline
    bind \ct bind_fz_here
    # M-t to append fz-git-changes to commandline
    bind ô bind_fz_git_changes

    # M-e to v $(fz-here)
    bind å bind_v_here
    # M-S-e to v $(fz-git-changes)
    bind Å bind_v_git_changes

    # M-d to fzf through dotfile folder, or kill-word
    bind ä bind_ed
    # M-S-d to fzf through dotfiles in ~/, or kill-word
    bind Ä bind_esd
    # M-C-d to fzf through ~/pants
    bind  bind_ecd
    # M-v to fzf-vim ~/.vim
    bind ö bind_ev
    # M-b to git branch or backward-word
    bind â bind_eb
    # C-b to become royal
    bind \cb bind_royals
    # M-g
    bind ç bind_fdz_guns
    # M-a
    bind á bind_fdz_vim_ark
    # M-s
    bind ó bind_fdz_vim_shop
    # M-x
    bind ø bind_fdz_vim_ink

    # Move \ee to \ex
    bind \ex edit_command_buffer
end
