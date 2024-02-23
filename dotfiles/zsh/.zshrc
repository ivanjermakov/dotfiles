SAVEHIST=10000
HISTSIZE=10000
HISTFILE=~/.zsh_history
CASE_SENSITIVE="true"
DISABLE_AUTO_UPDATE="true"
PS1="%{%F{green}%}%n%{%f%}@%{%F{magenta}%}%m %{%F{blue}%}%~%{%f%}%(!.#.$) "
ZSH_DISABLE_COMPFIX="true"

setopt autocd
setopt HIST_IGNORE_ALL_DUPS

autoload -U compinit; compinit

# https://stackoverflow.com/a/8645267/8662097
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char
bindkey '^R' history-incremental-search-backward

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#aaaaaa"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

source ~/.env


# Load Angular CLI autocompletion.
source <(ng completion script)
