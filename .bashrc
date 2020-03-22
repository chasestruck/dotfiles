# Chase Struck's .bashrc

# History control
HISTCONTROL=ignoredups:ignorespace
HISTSIZE=500
HISTFILESIZE=1000

# Aliases
alias vi='vim'
alias ls='ls --group-directories-first'
alias q='exit'

# Fix colors
export TERM="xterm-256color"

# Duh.
export EDITOR=/usr/bin/vim

# Change location of my vimrc file
export VIMINIT="source ~/.vim/vimrc"

# Load prompt
export PS1="[\e[0;32m\u\e[0;00m > \e[0;34m\w\e[0;00m]$ "
