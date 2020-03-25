# aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias cal='cal -m'
alias pl='pdflatex -interaction=nonstopmode'
alias v='vim'

# functions
function d() { du -h --max-depth=1 "$1" 2>/dev/null }
function t() { echo "task/$1.md" ; taskell "task/$1.md" }
