function dt
  if count $argv > /dev/null
    set -Ux THING $argv
    echo $THING 1>&2
    eval $THING
  else
    echo $THING 1>&2
    eval $THING
  end
end
