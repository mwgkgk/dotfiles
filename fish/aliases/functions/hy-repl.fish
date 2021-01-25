function hy-repl
    # https://docs.hylang.org/en/stable/tutorial.html#literals
    hy --repl-output-fn=hy.contrib.hy-repr.hy-repr $argv
end
