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
alias start_conda="source /home/madeline/anaconda3/bin/activate"

#ENTER MESSAGE

cat <<EOF
==============================================
Welcome home
Let's get some work done today
It's $(date)
==============================================
EOF

GTK_THEME=Adwaita:dark

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/madeline/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/madeline/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/madeline/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/madeline/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

