#!/bin/bash

alias lg=lazygit
alias py3="python3"
alias vim='nvim'
alias zsh='source ~/.zshrc && echo sourcing zsh'
alias kmaster='ssh kmaster@192.168.1.2'

# Shortcuts to dir to change the path go to specified folder in the terminal and type in pwd (print working directory) copy the path
# into the alias
alias ecomm='cd /Users/andrew.cacayuran/ecomm/'
alias ultra='cd /Users/andrew.cacayuran/ecomm/wp-ultra/wp-content/themes/ultramobile'
alias mint='cd /Users/andrew.cacayuran/ecomm/wp-sites/wp-content/themes/mintmobile'
alias bfw='cd /Users/andrew.cacayuran/ecomm/web-fixed-wireless'

# NPM
alias ns='npm run start'
alias nd='npm run dev'
alias ni='npm i'

#Yarn
alias ys='yarn run start'
alias yi='yarn install'

# Kill all instances of node
alias kn='killall node'

# WP Cli - Non-Docker
alias wp-sec-off='wp plugin deactivate ithemes-security-pro --network'
alias wpdb='wp db import'

# Git short commands
alias gs='git status'
alias gp='git push'
alias gpl='git pull'
alias gc='git commit -m '
alias gr='git reset --hard'
alias grh='git reset HEAD~'
alias gclean='git clean -fd && git checkout -- .'
alias gclean-d='git clean -d -n'
alias glist='git branch -a'

restoreFile(){
  echo "Branch to restore file from? "
	read branch
	echo "File to restore? "
	read filename
	git checkout $branch -- $filename
}

# Remove file with confirmation
alias rm="rm -i"

#Vs Code Opens the folder in the same window
# usage vsc /folder
#vsc . opens the current folder in the same window
alias vsc="code -r "

