function do-thing
  if count $argv > /dev/null
    set -e THING
    set -Ux THING $argv
    commandline -r "$THING"
    commandline -f execute
  else
    commandline -r "$THING"
    commandline -f execute
  end
end

function dt
	do-thing  $argv;
end
