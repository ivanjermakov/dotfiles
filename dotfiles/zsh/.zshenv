# aliases
alias history='history 1'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias cal='cal -m'
alias pl='pdflatex -interaction=nonstopmode'
alias v='nvim'
alias d='du -hs'
alias df='df -h'

alias gits='git status'
alias gitp='git pull'
alias gitc='git commit -a'

alias lg='lazygit'

alias reboot="sudo systemctl reboot"
alias poweroff="sudo systemctl poweroff"
alias halt="sudo systemctl halt"

alias yt-dlpf='yt-dlp -w -N 4 -f "bestvideo[ext=webm][height<=1440]+bestaudio/bestvideo[height<=1440]+bestaudio" --ignore-errors --no-continue --no-overwrites --add-metadata --all-subs --embed-subs --output "%(uploader)s - %(title)s [%(id)s].%(ext)s"'

alias vifm='vifmrun'

