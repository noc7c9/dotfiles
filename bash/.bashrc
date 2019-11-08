# command to reload bash config
alias reload-bashrc="source ~/.bashrc"

# Setup shortcuts to common folders
p() { cd "$HOME/projects/$*" || return; l .; }
___dotfiles() { cd "$HOME/dotfiles/$*" || return; l .; }
alias .files="___dotfiles"

# ls shortcuts
l() { exa --all --classify --sort type "$@"; }
ll() { exa --all --classify --sort type --long "$@"; }

# Misc shortcuts
alias mkdir="mkdir -p"
mkcd() { mkdir -p "$@"; cd "$@" || return; }
alias e="nvim"

# Git shortcuts
alias g="git"
alias ga="git a"
alias gaa="git aa"
alias gb="git b"
alias gco="git co"
alias gd="git d"
alias gds="git ds"
alias gl="git l"
alias gll="git ll"
alias glll="git lll"
alias glast="git last"
alias gs="git s"
alias gshow="git show"
alias gx="git x"
alias gxa="git xa"
gxm() { git x -m "$*"; }
gxam() { git xa -m "$*"; }
gamendm() { git amend -m "$*"; }

# Expose binaries installed in the current project's node_modules folder
export PATH=./node_modules/.bin:$PATH

# Add binaries installed with cargo to PATH
export PATH="$HOME/.cargo/bin:$PATH"

# Add binaries installed with pip to PATH
export PATH="$HOME/.local/bin:$PATH"

# Add ~/bin to PATH
export PATH="$HOME/bin:$PATH"

# Load in local-only settings
if [ -f ~/.bashrc.local ]; then
    # shellcheck source=/dev/null
    source ~/.bashrc.local
fi

# Setup FZF to use ripgrep
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'

eval "$(alert --install)"
alias aa=alert

# Configure bash history

# Unlimited bash history
# https://superuser.com/a/664061
HISTFILESIZE=
HISTSIZE=
HISTTIMEFORMAT="%F %T $ "
HISTFILE=~/.bash_unlimited_history

# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# Stop duplicates in the history and ignore commands that start with space
HISTCONTROL=ignorespace:ignoredups:erasedups
