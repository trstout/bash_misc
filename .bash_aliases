##############
#Bash Aliases#
##############

## Navigation ##

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'


## Common Commands ##

alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls --color=auto'


## Updates ##

alias aptall='sudo apt update && sudo apt dist-upgrade -y && sudo apt autoremove -y && sudo apt autoclean'
alias update='sudo apt update'
alias upgrade='sudo apt dist-upgrade -y'
alias install='sudo apt install'
alias reinstall='sudo apt reinstall'
alias remove='sudo apt remove'
alias purge='sudo apt purge'
alias search='sudo apt search'
alias list='sudo apt list'


## Applications ##

alias notion='snap run notion-snap-reborn'
alias synaptic='sudo synaptic'
