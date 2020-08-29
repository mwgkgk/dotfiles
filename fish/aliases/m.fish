function m
    if test -e ./Taskfile.yml
        task $argv
    else
        make $argv
    end
end
