function fish_greeting
    if test -z "$VIM_SERVERNAME" &&
        not test -z "$CHI" &&
        not test "$CHI" = "rogue" &&
        not test "$LISP_ADV"
        servus
        set sessions (v all-frecent-sesh | head -n 7 | awk -F/ '{print $NF}' | tr '\n' ' ')

        if test -n "$sessions"
            echo -s (set_color $fish_command_timer_color) "x " (set_color normal) "$sessions"
        end
    end
end
