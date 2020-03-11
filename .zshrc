# Chase's .zshrc
# Tested/Used on UbuntuMATE 19.10

# Print a newline after every command, unless it's the first prompt in the window
function precmd() {
    if [ -z "$NEW_LINE_BEFORE_PROMPT" ]; then
        NEW_LINE_BEFORE_PROMPT=1
    elif [ "$NEW_LINE_BEFORE_PROMPT" -eq 1 ]; then
        echo ""
    fi
}

# hostname:dir username
PROMPT='%m:%1~ %n%# '

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

# Usefull aliases
alias ls='ls --group-directories-first'
alias vi='vim'
alias code='codium'
alias g='git'

# EOF
