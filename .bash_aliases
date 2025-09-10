# FUNCTIONS
function get_devcontainer() {
	cp -r ~/dotfiles/devcontainers/"$1"/.devcontainer ./
}

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
