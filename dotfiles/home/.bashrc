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

# zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=7'

# functions
function d() { du -h --max-depth=1 "$1" 2>/dev/null }

# env
source ~/.env
