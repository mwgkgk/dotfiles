# Cyrillic (ЙЦУКЕН) to QWERTY, by key position. Port of zoo/cl/src/qwerty.lisp,
# so Enter never depends on a compiled binary.
#
#   qwerty ифыва              -> bsdf
#   qwerty --detect-layout s  -> translate only if s starts with a Cyrillic char
#
# Character by character, all at once: ю -> . and . -> / never chain.

function qwerty --description 'Translate Cyrillic-layout typing to QWERTY'
    set -l from ё Ё \" № \; : \? \
        й Й ц Ц у У к К е Е н Н г Г ш Ш щ Щ з З х Х ъ Ъ / \
        ф Ф ы Ы в В а А п П р Р о О л Л д Д ж Ж э Э \
        я Я ч Ч с С м М и И т Т ь Ь б Б ю Ю . ,
    set -l to \` \~ @ \# \$ ^ \& \
        q Q w W e E r R t T y Y u U i I o O p P \[ \{ \] \} \| \
        a A s S d D f F g G h H j J k K l L \; : \' \" \
        z Z x X c C v V b B n N m M , \< . \> / \?

    set -l detect 0
    if test "$argv[1]" = --detect-layout
        set detect 1
        set -e argv[1]
        if test (count $argv) -eq 0
            echo 'Usage:' >&2
            echo '  qwerty [--detect-layout] <whitespace-separated-words>' >&2
            return 1
        end
    end

    set -l s (string join ' ' -- $argv)
    if test $detect = 1
        # Cyrillic = the letters above plus №
        set -l first (string sub -l 1 -- $s)
        if not string match -qr '^[А-яЁё№]' -- $first
            printf '%s' $s
            return 0
        end
    end

    set -l out
    for c in (string split '' -- $s)
        if set -l i (contains -i -- $c $from)
            set -a out $to[$i]
        else
            set -a out $c
        end
    end
    printf '%s' (string join '' -- $out)
end
