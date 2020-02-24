# Chase's .zshrc
# Tested/Used on UbuntuMATE 19.10

autoload -Uz vcs_info
precmd_functions+=( precmd_vcs_info )
setopt PROMPT_SUBST
zstyle ':vcs_info:git:*' formats '%r (%b)'
zstyle ':vcs_info:*' enable git hg
precmd () { vcs_info }

function precmd() {
    # Print a newline after the executed command, unless it's the first prompt in the terminal window.
    if [ -z "$NEW_LINE_BEFORE_PROMPT" ]; then
        NEW_LINE_BEFORE_PROMPT=1
    elif [ "$NEW_LINE_BEFORE_PROMPT" -eq 1 ]; then
        echo ""
    fi
}

# hostname:dir username
PROMPT='%m:%1~ %n%# '
# VCS Info
RPROMPT='${vcs_info_msg_0_}'

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
