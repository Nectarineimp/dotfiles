
# Use vi mode for command line edit
set -o vi

# Tell the terminal to show color (for directory listings, etc)
export CLICOLOR=1

# Set the colors for different items.  "man ls" for details
export LSCOLORS=exFxCxDxBxegedabagacad

export EDITOR=vi
export EDITOR='mvim -f -c "au VimLeave * opendiff -a Terminal"'

# This resolves issues install the mysql, postgres, and other gems with native non universal binary extensions
export ARCHFLAGS='-arch x86_64'

export EC2_HOME=~/ec2-api-tools
export EC2_PRIVATE_KEY=~/.ec2/pk-ZWGNESIRMFRDKVNJU2MWOF7TMTZLQ356.pem
export EC2_CERT=~/.ec2/cert-ZWGNESIRMFRDKVNJU2MWOF7TMTZLQ356.pem
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export CLASSPATH=$CLASSPATH:/usr/local/Cellar/clojure-contrib/1.2.0/clojure-contrib.jar

export M2_HOME=~/maven/current
export M2=$M2_HOME/bin
export GROOVY_HOME=~/groovy
export GRADLE_HOME=~/gradle
export PATH=$PATH:~/bin:$GROOVY_HOME/bin:$GRADLE_HOME/bin:$EC2_HOME/bin:$M2


# Enable autotest to run cucumber and rspec
AUTOFEATURE=true
RSPEC=true
export AUTOFEATURE RSPEC

alias emacs='open -a Emacs.app'
alias cu='cucumber'
alias ss='svn status'
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'

alias got='git '
alias get='git '


alias ..="cd .."        #go to parent dir
alias ...="cd ../.."    #go to grandparent dir
alias l.='ls -d .*'     #list hidden files
alias ll='ls -lhrt'     #extra info compared to "l"
alias lld='ls -lUd */'  #list directories


alias be='bundle exec'
alias ber='bundle exec rake'

# make and change to a directory
md () { mkdir -p "$1" && cd "$1"; }

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# Thanks to http://www.ibm.com/developerworks/linux/library/l-tip-prompt/
# for helping me fix my wrapping
export PS1='\[\e[0;31m\]\w\[\e[m\]> '

if [ -f ~/.local_bash_profile ]; then
      . ~/.local_bash_profile
fi

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

