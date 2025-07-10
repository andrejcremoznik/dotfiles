function sail
  set context "$(docker context inspect --format '{{.Name}}')"
  if test $context != default
    if not prompt_confirm "Docker context is $context. Continue?"
      return 0
    end
  end
  ./vendor/bin/sail $argv
end
