function bench
  perf stat -r 100 -d $argv
end
