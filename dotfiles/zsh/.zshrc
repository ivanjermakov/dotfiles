export ZSH="/home/ivan/.oh-my-zsh"

CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
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

# aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias cal='cal -m'
alias pl='pdflatex -interaction=nonstopmode'

# functions
function d() { du -h --max-depth=1 "$1" 2>/dev/null }

# env
export EDITOR=vim
export VISUAL=vim

export PATH=$PATH$( find $HOME/bin/ -maxdepth 2 -type d -printf ":%p" )
export PATH="$HOME/.script:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH=/usr/local/texlive/2019/bin/x86_64-linux:$PATH    

export MANPAGER="/usr/bin/zsh -c \"col -b | vim -c 'set ft=man ts=8 nomod nolist noma' -\""
export INFOPATH=$INFOPATH:/usr/local/texlive/2019/texmf-dist/doc/info
export MANPATH=$MANPATH:/usr/local/texlive/2019/texmf-dist/doc/man

export VIFM="$HOME/.config/vifm"

export _JAVA_OPTIONS='-Dsun.java2d.uiScale.enabled=false'
