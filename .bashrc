#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"
alias l="ls -al --color=auto"

shopt -s histappend
shopt -s autocd
unset command_not_found_handle

#Starship Prompt:
eval "$(starship init bash)"

#ALIASES
alias maddiegit="git config --global user.email madeline.r.colbert@gmail.com && git config --global user.name \"Madeline Colbert\""
alias mattgit="git config --global user.email colbertmatt12+6ymv9vew@gmail.com && git config --global user.name \"MattColb\""
alias gituser="git config --global user.email && git config --global user.name"
alias celar="clear"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias pacman-clean="sudo pacman -Rns $(pacman -Qdtq)"

#ENTER MESSAGE

cat <<EOF
==============================================
Welcome home
Let's get some work done today
It's $(date)
==============================================
EOF

GTK_THEME=Adwaita:dark
