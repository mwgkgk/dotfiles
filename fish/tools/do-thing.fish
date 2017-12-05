function do-thing
  if count $argv > /dev/null
    set -e THING
    set -Ux THING $argv
    echo $THING 1>&2
    eval $THING
  else
    echo $THING 1>&2
    eval $THING
  end
end

function dt
	do-thing  $argv;
end
