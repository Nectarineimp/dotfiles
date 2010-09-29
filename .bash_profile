
# Use vi mode for command line edit
set -o vi

# Tell the terminal to show color (for directory listings, etc)
export CLICOLOR=1

# Set the colors for different items.  "man ls" for details
export LSCOLORS=exFxCxDxBxegedabagacad

export CVSROOT=:ext:cphillip@susedev:/cvsroot/portal

export EDITOR=vi

# This resolves issues install the mysql, postgres, and other gems with native non universal binary extensions
export ARCHFLAGS='-arch x86_64'


# MacPorts Installer addition on 2010-06-28_at_12:54:31: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# My scripts
export PATH=$PATH:~/bin

alias cu='cucumber'
alias ss='svn status'
alias wr='rvm list'

alias ..="cd .."        #go to parent dir
alias ...="cd ../.."    #go to grandparent dir
alias l.='ls -d .*'     #list hidden files
alias ll='ls -lhrt'     #extra info compared to "l"
alias lld='ls -lUd */'  #list directories


# make and change to a directory
md () { mkdir -p "$1" && cd "$1"; }

if [ -f /opt/local/etc/bash_completion ]; then
      . /opt/local/etc/bash_completion
fi

export PS1='\e[0;34m\u\e[m@\h:\e[0;31m\w\e[m> '


[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

