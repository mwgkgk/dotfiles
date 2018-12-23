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
        commandline -i "googler "
        # else if test "$cmdline" = "d "
        #   commandline -f execute
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
    commandline -r "rlwrap dash"
    commandline -f execute
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

function bind_fzf_cd_from_home
    fd -t d --follow "" ~ | fzf +m --height 15 --reverse | read -l result
    and cd $result
    commandline -f repaint
end

function bind_fzf_cd_from_shop
    fd -t d --follow "" ~/shop | fzf +m --height 15 --reverse | read -l result
    and cd $result
    commandline -f repaint
end

function bind_fzf_cd_from_cases
    fd -t d --follow "" ~/shop/cases | fzf +m --height 15 --reverse | read -l result
    and cd $result
    commandline -f repaint
end

function bind_fzf_cd_from_ink
    fd -t d --follow "" ~/ink | fzf +m --height 15 --reverse | read -l result
    and cd $result
    commandline -f repaint
end

function bind_fzf_cd_from_here
    fd -t d --follow | fzf +m --height 15 --reverse | read -l result
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
        fd --type file --hidden --follow --exclude .git "" ~/code/dotfiles/ | fzf +m --height 15 --reverse | read -l result
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

function bind_ev
    fd --type file --hidden --follow --exclude .git "" ~/.vim/ | fzf +m --height 15 --reverse | read -l result
    and commandline -- "v $result" ;and commandline -f execute
    commandline -f repaint
end

function bind_eb
    set -l cmdline (commandline)
    if test -z "$cmdline"
        fd --type file --follow --exclude .git "" ~/bin/ | fzf +m --height 15 --reverse | read -l result
        and commandline -- "v $result" ;and commandline -f execute
        commandline -f repaint
  else
      commandline -f backward-word
  end
end

function bind_esb
    set -l cmdline (commandline)
    if test -z "$cmdline"
        fd --type file --follow --exclude .git "" ~/shop/grim | fzf +m --height 15 --reverse | read -l result
        and commandline -- "v $result" ;and commandline -f execute
        commandline -f repaint
  else
      commandline -f backward-word
  end
end

function bind_eg
    fd --type file --hidden --follow --exclude .git "" ~/org/ | fzf +m --height 15 --reverse | read -l result
    and commandline -- "v $result" ;and commandline -f execute
    commandline -f repaint
end

function bind_fzf_vim_from_ark
    fd --type file --hidden --follow --exclude .git "" ~/ink/ark/ | fzf +m --height 15 --reverse | read -l result
    and commandline -- "v $result" ;and commandline -f execute
    commandline -f repaint
end

function bind_fzf_vim_from_shop
    fd --type file --hidden --follow --exclude .git "" ~/shop/ | fzf +m --height 15 --reverse | read -l result
    and commandline -- "v $result" ;and commandline -f execute
    commandline -f repaint
end

function bind_fzf_vim_from_ink
    set -l cmdline (commandline)
    fd --type file --hidden --follow --exclude .git "" ~/ink/ | fzf +m --height 15 --reverse | read -l result
    and commandline -- "v $result" ;and commandline -f execute
    commandline -f repaint
end

function fzf-select -d 'fzf commandline job and print unescaped selection back to commandline'
    set -l cmd (commandline -j)
    [ "$cmd" ]; or return
    eval $cmd | fzf -m --tiebreak=index --select-1 --exit-0 | string join ' ' | read -l result
    [ "$result" ]; and commandline -j -- $result
    commandline -f repaint
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
    bind \eo bind_ls_here
    # M-S-o to exa -l --sort modified --tree
    bind Ï bind_lstree_here

    # M-i to git status
    bind \ei bind_git_status
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

    # M-f to bat
    bind æ bind_bat_here

    # M-~ to also fzf-cd from ~
    bind à bind_fzf_cd_from_home
    # M-s to fzf-cd from ~/shop/
    bind ó bind_fzf_cd_from_shop
    # M-c to fzf-cd from ~/shop/cases/
    bind ã bind_fzf_cd_from_cases
    # M-x to fzf-cd from ~/ink/
    bind ø bind_fzf_cd_from_ink
    # M-w to fzf-cd from .
    bind ÷ bind_fzf_cd_from_here
    # M-r to fzf through siblings
    bind ò bind_er

    # C-r to fzf-history
    bind \cr bind_cr
    # C-t to add files
    bind \ct bind_fz_here
    # M-t to fzf-select
    bind ô fzf-select

    # M-e to v $(fz-here)
    bind å bind_v_here
    # M-S-e to v $(fz-git-changes)
    bind Å bind_v_git_changes

    # M-d to fzf through dotfile folder, or kill-word
    bind ä bind_ed
    # M-S-d to fzf through dotfiles in ~/, or kill-word
    bind Ä bind_esd
    # M-v to fzf-vim ~/.vim
    bind ö bind_ev
    # M-b to fzf-vim ~/bin or backward-word
    bind â bind_eb
    # M-S-b to fzf-vim ~/bin or backward-word
    bind Â bind_esb
    # M-g to fzf-vim ~/org
    bind ç bind_eg
    # M-a to fzf-vim ~/ink/ark/
    bind á bind_fzf_vim_from_ark
    # M-S-s to fzf-vim ~/shop or forward-word
    bind Ó bind_fzf_vim_from_shop
    # M-S-x to fzf-vim ~/ink
    bind Ø bind_fzf_vim_from_ink

    # Move \ee to \ex
    bind \ex edit_command_buffer
end
