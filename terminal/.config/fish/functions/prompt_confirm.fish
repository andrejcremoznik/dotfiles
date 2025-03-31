function prompt_confirm --description 'Ask the user for confirmation' --argument prompt
  if test -z "$prompt"
    set prompt "Continue?"
  end
  while true
    read -P "$prompt [y/N]: " -l confirm
    switch $confirm
      case Y y
        return 0
      case '*'
        return 1
    end
  end
end
