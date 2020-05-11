# .zshrc
# Last updated 5/10/20 by Aditya.


# Part 1: Environment Variables
# Set custom $PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH
# Set $EDITOR to sublime (symlinked in ~/bin)
export EDITOR="subl"
# GPG_TTY fix (see github.com/keybase/keybase-issues/issues/2798)
export GPG_TTY=$(tty)


# Part 2: Antigen Packages
# Initialize antigen
source /usr/local/share/antigen/antigen.zsh
# Add pure prompt
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure
# Add syntax highlighting and autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
# Apply changes
antigen apply


# Part 3: Zsh custom aliases
# Shortcut to activate Python venvs
alias activate="source env/bin/activate"
# Shortcut to clear terminal
alias cls="clear"
# Make ls colorful by default
alias ls='ls -G'
# Shortcut to make ls -lah easier
alias lsa="ls -lah"
# Make color diffs the default
alias diff="diff --color"

# Part 4: Custom keybinds
bindkey "\e\e[D" backward-word
bindkey "\e\e[C" forward-word

# Part 5: Dotfile configuration
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
