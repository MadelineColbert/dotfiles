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

if [ -f ~/.bash_aliases ]; then . ~/.bash_aliases; fi

shopt -s histappend
shopt -s autocd
unset command_not_found_handle

#NVIDIA
export PATH=${PATH}:/usr/local/cuda-13.0/bin
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/cuda-13.0/lib64

GTK_THEME=Adwaita:dark

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba shell init' !!
export MAMBA_EXE='/home/madeline/miniforge3/bin/mamba';
export MAMBA_ROOT_PREFIX='/home/madeline/miniforge3';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell bash --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias mamba="$MAMBA_EXE"  # Fallback on help from mamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<
