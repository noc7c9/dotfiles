# __STARTUP_START=$(date +%s%N)

# command to reload bash config
alias reload-bashrc="source ~/.bashrc"

# Setup shortcuts to common folders
p() { cd "$HOME/projects/$*" || return; l .; }
___dotfiles() { cd "$HOME/dotfiles/$*" || return; l .; }
alias .files="___dotfiles"

# ls shortcuts
l() { exa --all --classify --sort type "$@"; }
ll() { exa --all --classify --sort type --long "$@"; }
lt() { l --tree "$@"; }
llt() { ll --tree "$@"; }

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

# Yarn shortcuts
alias y="yarn"
alias yi="yarn install"
alias ys="yarn start"
alias yt="yarn test"
alias ytw="yarn test:watch"
alias ya="yarn add"
alias yad="yarn add -D"
alias yr="yarn remove"
alias yb="yarn build"

function y?() {
    local jqcmd
    local initial

    initial=$(pwd)
    jqcmd=".scripts | to_entries[] | \"- $(tput bold)\\(.key)$(tput sgr0)\\n     \\(.value)\""

    # Walk up the tree looking for a package.json file
    while [ "$(pwd)" != "/" ]; do
        if [ -f "./package.json" ]; then
            jq --raw-output "$jqcmd" ./package.json
            break;
        fi

        cd ..
    done

    cd "$initial" || exit
}

# Expose binaries installed in the current project's node_modules folder
export PATH=./node_modules/.bin:$PATH

# Add binaries installed with cargo to PATH
export PATH="$HOME/.cargo/bin:$PATH"

# Add binaries installed with pip to PATH
export PATH="$HOME/.local/bin:$PATH"

# Add ~/bin and ~/bin.local to PATH
# Note: ~/bin.local comes first so that it can override ~/bin
export PATH="$HOME/bin.local:$HOME/bin:$PATH"

# Setup FZF to use ripgrep
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'

eval "$(alert --install)"
alias aa=alert

# Configure bash history

# # Append to the history file, don't overwrite it
# shopt -s histappend

# Unlimited bash history
# https://superuser.com/a/664061
HISTFILESIZE=
HISTSIZE=
HISTTIMEFORMAT="%F %T $ "
HISTFILE=~/.bash_unlimited_history

# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
if [[ -z "$PROMPT_COMMAND" ]]; then
    PROMPT_COMMAND="history -a"
else
    # Remove any trailing semicolon before appending
    PROMPT_COMMAND="${PROMPT_COMMAND%;}; history -a"
fi

# Stop duplicates in the history and ignore commands that start with space
HISTCONTROL=ignorespace:ignoredups:erasedups

# Load in local-only settings
# Note: this should be the last command in ~/.bashrc so that the local settings
# can override any global ones
if [ -f ~/.bashrc.local ]; then
    # shellcheck source=/dev/null
    source ~/.bashrc.local
fi

# __STARTUP_END=$(date +%s%N)
# printf "STARTUP TIME = "
# bc <<< "scale=5; ($__STARTUP_END - $__STARTUP_START) / 1000000000"
