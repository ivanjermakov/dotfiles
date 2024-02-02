SAVEHIST=10000
HISTSIZE=10000
HISTFILE=~/.zsh_history
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
PS1="%{%F{green}%}%n%{%f%}@%{%F{magenta}%}%m %{%F{blue}%}%~%{%f%}%(!.#.$) "
ZSH_DISABLE_COMPFIX="true"

setopt autocd

autoload -U compinit; compinit

# https://stackoverflow.com/a/8645267/8662097
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#aaa"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

source ~/.env

