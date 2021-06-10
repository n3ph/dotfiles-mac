# I need $PATH extensions
export PATH="/usr/local/opt/binutils/bin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"

# Oh My ZSH / Spaceship Prompt
export ZSH="$HOME/Repositories/personal/ohmyzsh"
ZSH_THEME="spaceship"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
source $ZSH/oh-my-zsh.sh

# Disable Python Byte Code
export PYTHONDONTWRITEBYTECODE=1

# Don't clobber files
set -o noclobber

# I want aliases
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias bc='bc --mathlib'
alias c='clear'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias chown='chown --preserve-root'
alias count='find . -type f | wc --lines'
alias cp='cp --interactive'
alias cpv='rsync --archive --human-readable --progress'
alias df='df --human-readable'
alias diff='colordiff'
alias du='du --human-readable --total | sort --human-numeric-sort'
alias egrep='egrep --color'
alias fgrep='fgrep --color'
alias grep='grep --color'
alias gh='history | grep'
alias gitreset='cd `git rev-parse --show-toplevel` && git checkout master && git pull'
alias gitroot='cd `git rev-parse --show-toplevel`'
alias h='history'
alias header='curl --head'
alias headerc='curl --head --compressed'
alias l='ls'
alias la='ls --almost-all'
alias ll='ls --almost-all -l --size -1'
alias ln='ln --interactive'
alias ls='ls --classify --color --escape --group-directories-first --human-readable --no-group'
alias mkdir='mkdir --parents --verbose'
alias mount='mount | column -t'
alias mtr='sudo mtr -t'
alias mtrg='sudo mtr -t 8.8.8.8'
alias mv='mv --interactive'
alias now='date +"%T"'
alias nowdate='date +"%d-%m-%Y"'
alias path='echo -e ${PATH//:/\\n}'
alias rm='rm --interactive --preserve-root'
alias rmdir='rmdir --parents --verbose'
alias tf='terraform'
alias tree='tree -C'
alias wget='wget --continue'
alias va='source ./venv/bin/activate'
alias ve='python3 -m venv ./venv'

# I want to keep shell history
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE=$HOME/.zsh_history

# I like python envs
PYTHONENV="$HOME/.pyenv/"
if [ -z "$PYHTONENV/bin/activate" ]; then
    source $PYTHONENV/bin/activate
fi

# google-cloud-sdk
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
