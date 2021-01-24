function mm
  if test (count $argv) -eq 0
      echo "Mmmm..."
  else
      mkdir $argv[1]
      cd $argv[1]
      if test (count $argv) -gt 1
          mm $argv[2..-1]
      end
  end
end
