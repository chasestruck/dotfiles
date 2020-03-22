# Chase's .zshrc
# Tested/Used on UbuntuMATE 19.10

# hostname:dir username$
PROMPT='%m:%~ %n$ '

# Fix colors
export TERM="xterm-256color"

# Basic auto complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Command auto-correction.
ENABLE_CORRECTION="true"

# Command execution time stamp shown in the history command output.
HIST_STAMPS="mm/dd/yyyy"

# Useful aliases
alias ls='ls --group-directories-first'
alias vi='vim'

# Change the location of the .vimrc file so that all vim files are in .vim
VIMINIT="source ~/.vim/vimrc"

# Here be some functions:
# Print a newline after every command, unless it's the first prompt in the window
function precmd() {
    if [ -z "$NEW_LINE_BEFORE_PROMPT" ]; then
        NEW_LINE_BEFORE_PROMPT=1
    elif [ "$NEW_LINE_BEFORE_PROMPT" -eq 1 ]; then
        echo ""
    fi
}
