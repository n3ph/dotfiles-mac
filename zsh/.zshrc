#! /usr/bin/env zsh

# I need $PATH extensions
export PATH="/usr/local/opt/binutils/bin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
export PKG_CONFIG_PATH="/usr/local/opt/curl/lib/pkgconfig"

# Starship prompt
eval "$(starship init zsh)"

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
alias gitreset='cd `git rev-parse --show-toplevel` && git checkout master && git pull'
alias gitroot='cd `git rev-parse --show-toplevel`'
alias h='history'
alias header='curl --head'
alias headerc='curl --head --compressed'
alias hg='history | grep'
alias l='ls'
alias la='ls --almost-all'
alias ll='ls --almost-all -l --size -1'
alias ln='ln --interactive'
alias ls='ls --classify --color --escape --group-directories-first --human-readable --no-group'
alias mfa='ykman oath accounts code -s | pbcopy'
alias mkdir='mkdir --parents --verbose'
alias mount='mount | column -t'
alias mtr='sudo mtr -t'
alias mtrg='sudo mtr -t 8.8.8.8'
alias mv='mv --interactive'
alias now='date +"%T"'
alias nowdate='date +"%d-%m-%Y"'
alias path='echo -e ${PATH//:/\\n}'
alias repos='cd ~/Repositories'
alias rm='rm --interactive --preserve-root'
alias rmdir='rmdir --parents --verbose'
alias sed='gsed'
alias tf='terraform'
alias tree='tree -C'
alias update='brew update; brew upgrade; brew cu -afy; brew cleanup'
alias va='source ./venv/bin/activate'
alias ve='python3 -m venv ./venv'
alias wget='wget --continue'

# I want to keep shell history
export HISTSIZE=100000
export SAVEHIST=100000
export HISTFILE=$HOME/.zsh_history
setopt inc_append_history
setopt share_history
autoload -Uz up-line-or-beginning-search
autoload -Uz down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey '\e[A' up-line-or-beginning-search
bindkey '\e[B' down-line-or-beginning-search

# I like python envs
PYTHONENV="$HOME/.pyenv/"
if [ -z "$PYHTONENV/bin/activate" ]; then
    source $PYTHONENV/bin/activate
fi

# google-cloud-sdk
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

# zsh function autoload
fpath=(~/.zsh/functions $fpath);
autoload -Uz $fpath[1]/*(.:t)

# zsh completion autoload
fpath=(~/.zsh/completions $fpath);
autoload -Uz compinit
compinit -u
