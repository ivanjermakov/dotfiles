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

alias lg='lazygit'

alias reboot="sudo systemctl reboot"
alias poweroff="sudo systemctl poweroff"
alias halt="sudo systemctl halt"

alias yt-dlpf='yt-dlp -w -N 4 -f "bestvideo[ext=webm][height<=1440]+bestaudio/bestvideo[height<=1440]+bestaudio" --ignore-errors --no-continue --no-overwrites --add-metadata --all-subs --embed-subs --output "%(uploader)s - %(title)s [%(id)s].%(ext)s"'

alias vifm='vifmrun'

alias google-chrome-stable='google-chrome-stable --disable-infobars --simulate-outdated-no-au='Tue, 31 Dec 2099 23:59:59 GMT' --disable-features=ChromeWhatsNewUI'
