# Remove default fish greeting
set fish_greeting

# Add shell perf metric
function timeshell 
  set shell $SHELL
  for i in (seq 1 10); /usr/bin/time $shell -i -c exit; end
end

# fish custom aliases
# Shortcut to activate Python venvs
abbr -a activate source env/bin/activate
# Shortcut to clear terminal
abbr -a cls clear
# Make ls colorful by default
abbr -a ls "ls -G"
# Shortcut to make ls -lah easier
abbr -a lsa "ls -lah"
# Make color diffs the default
abbr -a diff "diff --color"
# Make typing python3 faster
abbr -a pt python3
# Make opening nvim easier
abbr -a vim "nvim"
# Opening things faster
abbr -a o "open"

# Skim.app
alias skim="open -a Skim"

# SPARK_HOME configuration
export SPARK_HOME="/Users/aditya/spark-31"

# XDG base directories
export XDG_CONFIG_HOME="/Users/aditya/.config"

# Initialize autojump
[ -f /opt/homebrew/share/autojump/autojump.fish ]; and source /opt/homebrew/share/autojump/autojump.fish

# Initialize rust toolchain
set --export PATH $HOME/.cargo/bin $PATH

# Initalize starship.rs
starship init fish | source


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/homebrew/Caskroom/miniforge/base/bin/conda
    eval /opt/homebrew/Caskroom/miniforge/base/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
