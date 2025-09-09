#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias l="ls -al --color=auto"

shopt -s histappend
shopt -s autocd
unset command_not_found_handle

#NVIDIA
export PATH=${PATH}:/usr/local/cuda-13.0/bin
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/cuda-13.0/lib64

#ALIASES
alias maddiegit="git config --global user.email madeline.r.colbert+eglrsaf4@gmail.com && git config --global user.name \"MadelineColbert\""
alias mattgit="git config --global user.email colbertmatt12+6ymv9vew@gmail.com && git config --global user.name \"MattColb\""
alias gituser="git config --global user.email && git config --global user.name"
alias celar="clear"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias start_conda="source /home/madeline/anaconda3/bin/activate"

alias emhome="cd /mnt/c/users/madel"


alias cmake_reset="cd .. && rm -fr build"
alias cmake_build="rm -fr build && mkdir build && cd build && cmake .. && make"

#ENTER MESSAGE

cat <<EOF
==============================================
Welcome home
Let's get some work done today
It's $(date)
==============================================
EOF

GTK_THEME=Adwaita:dark
