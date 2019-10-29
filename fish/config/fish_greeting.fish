function fish_greeting
    if test -z "$VIM_SERVERNAME" &&
        not test -z "$CHI" &&
        not test "$CHI" = "rogue"
        servus
    end
end
