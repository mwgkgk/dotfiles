function fish_prompt --description 'Write out the prompt'
	set -l color_cwd
    set -l suffix
    switch $USER
        case root toor
            if set -q fish_color_cwd_root
                set color_cwd $fish_color_cwd_root
            else
                set color_cwd $fish_color_cwd
            end
            set suffix ' # '
        case '*'
            set color_cwd $fish_color_cwd
            set suffix ' '
    end

    if set -q LISP_ADV
        echo -n -s (set_color $fish_color_prompt) "lisp-adv"
    elseif set -q THIS
        echo -n -s (set_color $fish_color_prompt) "this"
    else
        # White themes are unsupported for now

        # if test -z "$VIM_SERVERNAME"
        #     echo -n -s (set_color $fish_color_prompt) "$USER " (prompt_hostname) ' ' (set_color $color_cwd) (prompt_pwd)
        # else
        #     echo -n -s (set_color $fish_color_prompt_gvim) "$USER " (prompt_hostname) ' ' (set_color $color_cwd) (prompt_pwd)
        # end

        echo -n -s (set_color $fish_color_prompt) "$USER " (prompt_hostname) ' ' (set_color $color_cwd) (prompt_pwd)
    end

    set -l job_count (jobs -c | wc -l)
    if test $job_count -ne 0
      printf " $job_count"
    end

    # Line end if we're over half screen in width
    # Hardcode 16 to avoid recalculating
    if test (string length (prompt_pwd)) -gt (math (tput cols) / 2 - 16)
      printf "\e[K\n"
    end

    echo -n -s (set_color normal) "$suffix"
end
