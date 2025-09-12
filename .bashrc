#
#
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/.bash_git

. "$HOME/.cargo/env"

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

if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases; fi

shopt -s histappend
shopt -s autocd
unset command_not_found_handle

#NVIDIA
export PATH=${PATH}:/usr/local/cuda-13.0/bin
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/cuda-13.0/lib64

GTK_THEME=Adwaita:dark
. "$HOME/.cargo/env"

. "$HOME/.local/bin/env"

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

