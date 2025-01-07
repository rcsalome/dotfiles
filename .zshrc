# Git Branch
function parse_git_branch() {
     #git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
	 git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

# Settings
# Needed for parse_git_branch to run each time
setopt prompt_subst
# Date, Directory, Branch
PROMPT='%B%F{magenta}%}%D{%Y-%m-%d}.%D{%H:%M:%S}%f%b-:%B%F{cyan}%}%~%b%f%B%F{green}%}$(parse_git_branch)%b%f %#'

export EDITOR=vim
export HISTSIZE= # unlimited history
export HISTFILESIZE= # unlimited filesize for history
setopt APPEND_HISTORY # append multipe bash histories

# Mac iTerm2 Settings
export CLICOLOR=1
export TERM=xterm-256color
export LSCOLORS=ExFxBxDxCxegedabagacad

# Mac Settings
export HOMEBREW_NO_AUTO_UPDATE=1

# Linux aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# I get the last Settings
export PATH=~/bin:$PATH
