# I need $PATH extensions
export PATH="/usr/local/opt/binutils/bin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"

# Oh My ZSH / Spaceship Prompt
export ZSH="Repositories/personal/ohmyzsh"
ZSH_THEME="spaceship"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
source $ZSH/oh-my-zsh.sh

# Disable Python Byte Code
export PYTHONDONTWRITEBYTECODE=1

# Don't clobber files
set -o noclobber

# I want aliases
alias egrep='egrep --color'
alias fgrep='fgrep --color'
alias grep='grep --color'
alias l='ls'
alias la='ls --almost-all'
alias ll='ls --almost-all -l'
alias ls='ls --classify --color --escape --no-group'
alias tf='terraform'
alias tree='tree -C'

# I want to keep shell history
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE=$HOME/.zsh_history

# I like python envs
PYTHONENV="$HOME/.pyenv/"
if [ -z "$PYHTONENV/bin/activate" ]; then
    source $PYTHONENV/bin/activate
fi
