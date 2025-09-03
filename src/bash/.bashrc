#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='╭─ \e[0;36m󰣇\e[0m  [\e[0;36m\u\e[0m@\h \W] \e[1;32m\d \t\e[0m `uptime -p` `uname -sr`\n╰─   '

## Path
export PATH=$HOME/.cargo/bin:$PATH
export MANPAGER='nvim +Man!'
export HISTFILESIZE=5000
export HISTSIZE=5000

## Alias
alias sl='ls'
alias ls='ls -lah --group-directories-first --color=auto'
alias mv='mv -i'
alias grep='grep --color=auto'
alias pipes.sh='pipes.sh -p 4 -R'
alias swm='git checkout main; git fetch; git pull; git branch; git st'
alias date-utc='date -u +%Y-%m-%d_%H-%M-%S_%z'
alias md='udisksctl mount --block-device /dev/sdb1'
alias ud='udisksctl unmount --block-device /dev/sdb1'

## Start
#fastfetch
#neofetch
#fortune | cowsay

## QT5
#export QT_QPA_PLATFORMTHEME="qt5ct"

## Wayland
#export QT_QPA_PLATFORM=wayland
#export XDG_CURRENT_DESKTOP=kde
#export XDG_SESSION_DESKTOP=kde
#export XDG_CURENT_SESSION_TYPE=wayland

eval "$(thefuck --alias)"
