# Setup shortcuts to common folders
p() { cd "$HOME/projects/$*" || return; l .; }
___dotfiles() { cd "$HOME/dotfiles/$*" || return; l .; }
alias .files="___dotfiles"

# ls shortcuts
l() { exa --all --classify --sort type "$@"; }
ll() { exa --all --classify --sort type --long --git "$@"; }

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
