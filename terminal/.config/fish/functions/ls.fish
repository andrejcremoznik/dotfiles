function ls --wraps='eza -F --group-directories-first'
  command eza -F --group-directories-first $argv
end
