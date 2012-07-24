echo "Loading zshrc"

. ~/.profile

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
#export ZSH_THEME="robbyrussell"
export ZSH_THEME=sporty_256

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(ruby osx brew)

source $ZSH/oh-my-zsh.sh

set -o emacs

# Turn of command correction
unsetopt correct_all
