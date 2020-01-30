#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m'

function red() {
    echo -e "${RED}$1${NC}"
}

function green() {
    echo -e "${GREEN}$1${NC}"
}

function cyan() {
    echo -e "${CYAN}$1${NC}"
}

for dir in alpaca*/; do
    echo "===== $dir ====="
    cd "$dir" || exit 1

    printf "+ Git Fetching... "
    git fetch 1>&2 2>/dev/null
    cyan "Done!"

    printf "? Has uncommitted changes? "
    nothing_to_commit=$(git status | rg "nothing to commit")
    if [ "$nothing_to_commit" == "" ]; then
        red Yes
    else
        green No
    fi

    printf "? Has unpushed changes? "
    ahead_branches=$(git branch -vv | rg ahead)
    if [ "$ahead_branches" != "" ]; then
        red Yes
    else
        green No
    fi

    printf "? Has stashed changes? "
    stashed_changed=$(git stash list)
    if [ "$stashed_changed" != "" ]; then
        red Yes
    else
        green No
    fi

    cd - > /dev/null || exit 1
    echo
done
