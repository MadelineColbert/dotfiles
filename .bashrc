#
#
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.bash_git

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias l="ls -al --color=auto"

test -f ~/git-prompt.sh && . ~/git-prompt.sh

# Then, set the options as desired. Remember that the current
# branch name is displayed no matter what.
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="auto"

# Finally, add $(__git_ps1) to the prompt variable. That's it!
PS1="\h @ \w\$(__git_ps1) \$ "

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
alias tmux_notes="cat ~/dotfiles/tmux_notes.md"

#ENTER MESSAGE

cat <<EOF
==============================================
Welcome home
Let's get some work done today
It's $(date)
==============================================
EOF

GTK_THEME=Adwaita:dark
