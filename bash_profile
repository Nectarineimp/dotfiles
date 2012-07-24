
. ~/.profile

set -o emacs

# Tell the terminal to show color (for directory listings, etc)
export CLICOLOR=1

# Set the colors for different items.  "man ls" for details
export LSCOLORS=exFxCxDxBxegedabagacad

# Thanks to http://www.ibm.com/developerworks/linux/library/l-tip-prompt/
# for helping me fix my wrapping
export PS1='\[\e[0;31m\]\w\[\e[m\]> '

if [ -f ~/.local_bash_profile ]; then
    . ~/.local_bash_profile
fi