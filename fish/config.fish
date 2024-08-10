if status is-interactive
    # Commands to run in interactive sessions can go here
    neofetch
    #mullvad status
end
### VARIABLES ###
set PATH /usr/bin $PATH
set -Ux VISUAL /usr/bin/vim
set -x EDITOR /usr/bin/vim

set -x DEVKITPRO /opt/devkitpro
set -x DEVKITPPC $DEVKITPRO/devkitPPC
set -x PATH $PATH $DEVKITPPC/bin

### FUNCTIONS ###

function upgrade
	sudo apt update && sudo apt upgrade -y
end

### ALIASES ###

# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."

# System
alias v="vim"
alias SS="sudo systemctl"

# Pacman and yay/git
alias a="sudo apt"

# Change ls to exac
alias ls="exa -al --color=always --group-directories-first"
alias la="exa -a --color=always --group-directories-first"
alias ll="exa -l --color=always --group-directories-first"
alias lt="exa -aT --color=always --group-directories-first"
alias l.="exa -a | egrep \"^\.\""

# Colorize grep
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

# Adding flags
alias cp="cp -iv"
alias cr="cp -irv"
alias df="df -h"

# Get top hardware hoggers
alias psmem="ps auxf | sort -nr -k 4"
alias psmem10="ps auxf | sort -nr -k 4 | head -10"
alias pscpu="ps auxf | sort -nr -k 3"
alias pscpu10="ps auxf | sort -nr -k 3 | head -10"

# Git
alias gc="git clone"

# YT-DLP
alias yta-aac="yt-dlp --extract-audio --audio-format aac"
alias yta-best="yt-dlp --extract-audio --audio-format best"
alias yta-m4a="yt-dlp --extract-audio --audio-format m4a"
alias yta-mp3="yt-dlp --extract-audio --audio-format mp3"
alias yta-wav="yt-dlp --extract-audio --audio-format wav"
alias ytv-best="yt-dlp -f bestvideo+bestaudio"
alias ytv-mp4="yt-dlp -f hls-720p --format mp4"

# Other
alias spongebob="curl -s https://raw.githubusercontent.com/nmdra/spongebob.sh/main/spongebob.sh -o spongebob.sh && bash spongebob.sh"
alias rr="curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash"


#neofetch

# Created by `pipx` on 2023-03-04 16:15:05
set PATH $PATH /home/jonah/.local/bin
