function rand-str
  argparse -X 1 'h/help' 'l/length=!_validate_int --min 1' -- $argv
  or return

  if set -ql _flag_help
    echo "Generate a random string.

Usage:
    rand-str
    rand-str -l 42

Params:
    -l, --length    String length. (default: 32)
    -h, --help      Show this help.
"
    return 0
  end

  set -l len 32

  if set -ql _flag_length
    set len $_flag_length
  end

  command tr -dc A-Za-z0-9 </dev/urandom | head -c $len
end
