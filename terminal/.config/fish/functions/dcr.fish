function dcr --wraps='docker compose run --rm'
  set context "$(docker context inspect --format '{{.Name}}')"
  if test $context != default
    if not prompt_confirm "Docker context is $context. Continue?"
      return 0
    end
  end
  docker compose run --rm $argv
end
