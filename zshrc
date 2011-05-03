# Path to your oh-my-zsh configuration.
export ZSH=$HOME/oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vi-mode svn ruby osx bundler brew)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
set -o vi

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

export DYLD_LIBRARY_PATH="/usr/local/oracle/instantclient_10_2"
export SQLPATH="/usr/local/oracle/instantclient_10_2"
export TNS_ADMIN="/usr/local/oracle/network/admin"
export NLS_LANG="AMERICAN_AMERICA.UTF8"


export PATH=$PATH:~/bin:$GROOVY_HOME/bin:$GRADLE_HOME/bin:$EC2_HOME/bin:$M2:$DYLD_LIBRARY_PATH


alias emacs='open -a Emacs.app'
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


[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
