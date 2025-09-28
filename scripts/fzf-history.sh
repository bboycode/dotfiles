#!/usr/bin/env bash

# Ensure fzf is installed
if ! command -v fzf &>/dev/null; then
    echo "fzf is not installed. Please install it first."
    exit 1
fi

# Read from .bash_history instead of `history`
selected_command=$(tac ~/.zsh_history | sed 's/^: [0-9]*:[0-9]*;//' | fzf)

if [[ -n "$selected_command" ]]; then
	eval "$selected_command"
else
	echo "No command selected."
fi

