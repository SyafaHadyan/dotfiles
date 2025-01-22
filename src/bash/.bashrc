#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

## Alias
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias pipes.sh='pipes.sh -p 4 -R'

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
