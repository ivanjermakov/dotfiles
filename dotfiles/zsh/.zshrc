export ZSH="/home/ivan/.oh-my-zsh"

CASE_SENSITIVE="true"

DISABLE_AUTO_UPDATE="true"

#PS1="%n@%m:%~$ "
PS1="%{%F{green}%}%n%{%f%}@%{%F{magenta}%}%m %{%F{blue}%}%~%{%f%}%(!.#.$) "

ZSH_DISABLE_COMPFIX="true"

plugins=(
	git
	zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# user configuration

# set theme

# zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=7'

# Aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias woff='nmcli radio wifi off && wifi turned off'
alias won='nmcli radio wifi on && wifi turned on'

# env
export PATH=$PATH$( find $HOME/bin/ -maxdepth 2 -type d -printf ":%p" )
export PATH="$HOME/.local/bin:$PATH"

export MANPAGER="/usr/bin/zsh -c \"col -b | vim -c 'set ft=man ts=8 nomod nolist noma' -\""

# autojump
. /usr/share/autojump/autojump.sh 1, 2> /dev/null
