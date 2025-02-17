#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1='\e[0;36m󰣇\e[0m [\e[0;36m\u\e[0m@\h \W] \e[1;32m\d \t\e[0m up `uptime | cut -d " " -f4 | tr -d ","` `uname -sr`\n\$ '
PS1='╭─ \e[0;36m󰣇\e[0m  [\e[0;36m\u\e[0m@\h \W] \e[1;32m\d \t\e[0m `uptime -p` `uname -sr`\n╰─   '

## Path
export PATH=$HOME/.cargo/bin:$PATH

## Alias
alias sl='ls'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias pipes.sh='pipes.sh -p 4 -R'
alias swm='git checkout main; git fetch; git pull; git branch; git st'
#alias docker='sudo docker'
#alias cm='sudo docker exec -it plastic-scm sh cm'
#alias cm='sudo docker exec -it plastic-scm /usr/bin/sh /exec-cm.sh'
alias cm="sudo docker run -it --rm -e HOST_USER_ID=$(id -u) -e HOST_GROUP_ID=$(id -g) -v ~/.plastic4:/home/ubuntu/.plastic4 -v .:/workspace plasticscm /usr/bin/sh /exec-cm.sh"

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

export MANPAGER='nvim +Man!'
eval "$(thefuck --alias)"
