function dcc --wraps='docker compose'
  set context "$(docker context inspect --format '{{.Name}}')"
  if test $context != default
    if not prompt_confirm "Docker context is $context. Continue?"
      return 0
    end
  end
  docker compose $argv
end
