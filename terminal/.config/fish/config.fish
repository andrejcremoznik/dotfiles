# Global vars
set -gx GPG_TTY $(tty)

if status is-interactive
    # Set colors
    fish_config theme choose 'TokyoNight Moon'

    # Configure completions etc.
    fzf_configure_bindings --variables=\e\cv
    kubeswitch kubectl-alias kubectl
    kubeswitch inherit-env
    command -q zoxide && zoxide init fish | source
    command -q jfrog && jfrog completion fish | source
end
