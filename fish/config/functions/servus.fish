# A random reminder from ~/ink/mozg/mem/, one time in five (always with --frfr).
# Port of servus-cl, so a new shell's greeting never depends on a compiled binary.
#
# Data files hold one lisp list of entries, each a list of one or two strings:
#   (("Press M-e to edit a file.") ("text" "note") ...)
# Printed as the text, then the note right-aligned to 79 columns.

function servus --description 'Print a random entry from ~/ink/mozg/mem'
    set -l frfr 0
    if contains -- --frfr $argv
        set frfr 1
    else if test (count $argv) -gt 0
        printf 'Wrong args: %s' "$argv" >&2
        return 1
    end
    if test $frfr = 0; and test (random 0 4) -ne 0
        return 0
    end

    set -l root ~/ink/mozg/mem
    test -d $root; or return 0

    # Random descent: pick among non-hidden files and dirs, recurse into dirs.
    set -l path $root
    while test -d $path
        set -l items $path/*   # globs skip dotfiles
        test (count $items) -gt 0; or return 0
        set path (random choice $items)
    end

    printf '%s:\n\n' (string replace -- (dirname $root)/ '' $path)
    awk -v seed=(random) '
        { src = src $0 "\n" }
        END {
            bs = sprintf("%c", 92)   # backslash, spelled out for fish quoting
            depth = 0; n = 0; k = 0
            len = length(src)
            for (i = 1; i <= len; i++) {
                c = substr(src, i, 1)
                if (c == ";" ) {                       # comment to end of line
                    while (i <= len && substr(src, i, 1) != "\n") i++
                } else if (c == "(") {
                    depth++
                    if (depth == 2) { n++; k = 0 }
                } else if (c == ")") {
                    depth--
                } else if (c == "\"") {
                    s = ""
                    for (i++; i <= len; i++) {
                        c = substr(src, i, 1)
                        if (c == bs) { i++; s = s substr(src, i, 1) }
                        else if (c == "\"") break
                        else s = s c
                    }
                    if (depth == 2) { k++; part[n, k] = s; parts[n] = k }
                }
            }
            if (n == 0) exit
            srand(seed)
            e = int(rand() * n) + 1
            printf "  %s\n", part[e, 1]
            if (parts[e] >= 2) printf "\n%79s\n", "-- " part[e, 2]
            printf "\n"
        }' $path
end
