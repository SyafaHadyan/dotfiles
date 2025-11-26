#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='╭─ \e[0;36m󰣇\e[0m  [\e[0;36m\u\e[0m@\h \W] \e[1;32m\d \t\e[0m `uptime -p` `uname -sr`\n╰─   '

## env
source ~/.env

## Path
export PATH=$HOME/.cargo/bin:$PATH
export EDITOR=nvim
export MANPAGER='nvim +Man!'
export HISTFILESIZE=5000
export HISTSIZE=5000

## Alias
alias sbash='source ~/.bashrc'
alias ..='cd ..'
alias sl='ls'
alias ls='ls -lah --group-directories-first --color=auto'
alias mv='mv -i'
alias please='sudo'
alias pls='please'
alias grep='grep --color=auto'
alias pipes.sh='pipes.sh -p 4 -R'
alias jawa='java'
alias swm='git checkout main; git fetch; git pull; git branch; git st'
alias date-utc='date -u +%Y-%m-%d_%H-%M-%S_%z'
alias md='udisksctl mount --block-device /dev/sdb1'
alias ud='udisksctl unmount --block-device /dev/sdb1'
alias tsex='tailscale set --exit-node'
alias tsend='tailscale set --exit-node='
alias tssub='tailscale set --accept-routes'
alias tssubend='tailscale set --accept-routes=false'
alias tst='tailscale status'
alias ce='EDITOR=nvim crontab -e'
alias cl='crontab -l'
alias ipfo='~/script/ipinfoio.sh'
alias iprf='iperf3 -c $IPERF3_SERVER -b 0'
alias shkg='~/script/ssh-keygen.sh'
alias cub='cd ~/Documents/Universitas\ Brawijaya/Class/Semester\ 3/'

## Start
#fastfetch
#neofetch
#fortune | cowsay

## QT5
#export QT_QPA_PLATFORMTHEME=""

## Wayland
#export QT_QPA_PLATFORM=wayland
#export XDG_CURRENT_DESKTOP=kde
#export XDG_SESSION_DESKTOP=kde
#export XDG_CURENT_SESSION_TYPE=wayland

eval "$(thefuck --alias)"

complete -C /usr/bin/terraform terraform
