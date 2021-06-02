# Oh My ZSH
export ZSH="Repositories/personal/ohmyzsh"
ZSH_THEME="spaceship"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Disable Python Byte Code
export PYTHONDONTWRITEBYTECODE=1

# Don't clobber files
set -o noclobber

# I want aliases
alias ls='ls --color -G'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls --color -alF'
alias la='ls --color -A'
alias l='ls --color -CF'

# I want to keep shell history
export HISTSIZE=10000
export SAVEHIST=10000
export HISTFILE=$HOME/.zsh_history

# I like python envs
PYTHONENV="$HOME/.pyenv/"
if [ -z "$PYHTONENV/bin/activate" ]; then
    source $PYTHONENV/bin/activate
fi

# I need $PATH extensions
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/binutils/bin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"

export LDFLAGS="-L/usr/local/opt/binutils/lib"
export LDFLAGS="-L/usr/local/opt/curl/lib"

export CPPFLAGS="-I/usr/local/opt/binutils/include"
export CPPFLAGS="-I/usr/local/opt/curl/include"

export PKG_CONFIG_PATH="/usr/local/opt/curl/lib/pkgconfig"
