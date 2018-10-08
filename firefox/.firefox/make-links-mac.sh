#!/usr/bin/env bash

config="$(cd $(dirname $0); pwd)"
profile=$(cd ~/Library/Application\ Support/Firefox/Profiles/Main; pwd)

mkdir -p "$profile/chrome"
ln -s "$config/userChrome.css" "$profile/chrome/userChrome.css"
ln -s "$config/user.js" "$profile/user.js"
