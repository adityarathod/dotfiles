#!/usr/bin/env zsh

set -euo pipefail

echo "Copying over new versions of files"

REPO_ROOT=$(pwd)

# just to be safe, we should be inside the repo
if [[ ! -d "$REPO_ROOT/.git" ]]; then
    echo "You're not running this inside the repository..."
    exit 1
fi


# tmux
cp ~/.tmux.conf "$REPO_ROOT"

# nvim
cp ~/.config/nvim/init.lua "$REPO_ROOT/.config/nvim"

# fish
cp ~/.config/fish/config.fish "$REPO_ROOT/.config/fish"
