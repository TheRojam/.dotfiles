export PATH="/usr/local/bin:$PATH"


# You may uncomment the following lines if you want `ls' to be colorized:
 #export LS_OPTIONS='--color=auto'
 #eval "`dircolors`"
 #alias ls='ls $LS_OPTIONS'
 #alias ll='ls $LS_OPTIONS -l'
 #alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
#alias ls="ls --color=auto"
alias ll='ls -alF'
alias l='ls -CF'
alias subl='/usr/local/bin/subl'
alias brew='/usr/local/bin/brew'
alias ls='ls -G'
alias cmem-start="/Users/amueller/cmem-start.sh"
alias cmem-clean="/Users/amueller/cmem-clean.sh"

[ ! "$UID" = "0" ] && /usr/local/bin/archey 
#[  "$UID" = "0" ] && /usr/local/bin/archey
PS1="\[\e[01;31m\]┌─[\[\e[01;35m\u\e[01;31m\]]──[\[\e[00;37m\]${HOSTNAME%%.*}\[\e[01;32m\]]:\w$\[\e[01;31m\]\n\[\e[01;31m\]└──\[\e[01;36m\]>>\[\e[0m\]"
eval $(docker-machine env ecc-dev)

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
