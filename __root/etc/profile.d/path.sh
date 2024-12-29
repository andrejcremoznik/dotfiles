#!/bin/sh

set_path() {
    [ "$(id -u)" -ge 1000 ] || return

    for i in "$@"; do
        [ -d "$i" ] || continue
        echo "$PATH" | grep -Eq "(^|:)$i(:|$)" && continue
        export PATH="${PATH}:$i"
    done
}

set_path ~/bin ~/node/bin ~/.cargo/bin
