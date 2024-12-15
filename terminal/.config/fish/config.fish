set -gx GPG_TTY $(tty)

if status is-interactive
    fzf_configure_bindings --variables=\e\cv
    kubeswitch kubectl-alias kubectl
    kubeswitch inherit-env
    command -q zoxide && zoxide init fish | source
    # command -q jfrog && jfrog completion fish | source
end
