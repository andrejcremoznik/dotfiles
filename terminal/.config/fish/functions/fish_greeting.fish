function fish_greeting
  command -q pfetch || return 0
  pfetch
end
