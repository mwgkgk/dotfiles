function mi
  if count $argv > /dev/null
    min  $argv;
  else
    min -i
  end
end

