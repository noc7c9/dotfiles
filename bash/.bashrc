p() { cd ~/projects/$*; ls; }
___dotfiles() { cd ~/dotfiles/$*; ls -AFG; }
alias .files="___dotfiles"

alias l="exa -aF"
alias ll="exa -aFl --git"

alias ls="ls -hFG"
alias lsa="ls -A"
alias lsl="lsa -l"

alias e="nvim"

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

# Expose binaries installed in the current project's node_modules folder
export PATH=./node_modules/.bin:$PATH

# Add binaries installed with cargo to PATH
export PATH="$HOME/.cargo/bin:$PATH"
