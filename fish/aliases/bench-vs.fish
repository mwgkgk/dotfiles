function bench-vs
  if test (count $argv) -ne 2 
    echo "usage: bench-vs <command1> <command2>"
  else
    set -l tmp1 "/tmp/perf.tmp1.data"
    set -l tmp2 "/tmp/perf.tmp2.data"
    perf record -o $tmp1 stat -r 100 -d $argv[1]
    perf record -o $tmp2 stat -r 100 -d $argv[2]
    perf diff $tmp1 $tmp2
    rm $tmp1 $tmp2
  end
end
