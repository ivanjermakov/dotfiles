# aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias cal='cal -m'
alias pl='pdflatex -interaction=nonstopmode'
alias v='nvim'
alias d='du -hs'

alias gits='git status'
alias gitp='git pull'
alias gitc='git commit -a'

alias reboot="sudo systemctl reboot"
alias poweroff="sudo systemctl poweroff"
alias halt="sudo systemctl halt"

alias mpv='mpv --af="acompressor=ratio=4,loudnorm"'

function listen-tex() {
	find $1 | entr -r pdflatex -interaction=nonstopmode -output-directory=out/ $1
}
