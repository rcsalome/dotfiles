# Git Branch
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Settings
#export PS1='\[\033[01;33m\]\u\[\033[00m\]@\[\033[01;35m\]\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$'
# Date, Branch, No User, No Host
export PS1='\[\033[01;35m\]$(date +%Y-%m-%d.%H:%M:%S)\[\033[00m\]-:\[\033[01;36m\]\w\[\033[00m\]\[\033[01;32m\]$(parse_git_branch)\[\033[00m\]\$'

export EDITOR=vim
export HISTSIZE= # unlimited history
export HISTFILESIZE= # unlimited filesize for history
shopt -s histappend # append multipe bash histories

# Mac iTerm2 Settings
export CLICOLOR=1
export TERM=xterm-256color
export LSCOLORS=ExFxBxDxCxegedabagacad

# Mac Settings
export HOMEBREW_NO_AUTO_UPDATE=1

# Linux aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# My alises
alias fuz='vim $(fzf)'
function rfuz {
                vim -p $(rg -l ${1})
}
function notifyme() {
  MSG=${1:-'Terminal is done'}
  TITLE=${2:-"Done!"}
  osascript -e "display notification \"${MSG}\" with title \"${TITLE}\""
}

# I Get the last Settings
export PATH=~/bin:$PATH
