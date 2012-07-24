. ~/.profile
. ~/.privates

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
#export ZSH_THEME="robbyrussell"
export ZSH_THEME=sporty_256

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vi-mode svn ruby osx brew rails lein)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
set -o emacs

export EDITOR='mvim -f -c "au VimLeave * opendiff -a Terminal"'

# This resolves issues install the mysql, postgres, and other gems with native non universal binary extensions
export ARCHFLAGS='-arch x86_64'

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

export CLOJURESCRIPT_HOME=/Users/calebphillips/Code/cljs/clojurescript

export PATH=$M2:$PATH:~/bin:$GROOVY_HOME/bin:$GRADLE_HOME/bin:$EC2_HOME/bin:$DYLD_LIBRARY_PATH:$CLOJURESCRIPT_HOME/bin

alias gs="git status"
alias svnst="svn st|grep -v 'X'|grep -v 'Performing'|grep -v '^$'"
alias emacs='open -a Emacs.app'

alias ..="cd .."        #go to parent dir
alias ...="cd ../.."    #go to grandparent dir
alias l.='ls -d .*'     #list hidden files
alias ll='ls -lhrt'     #extra info compared to "l"
alias lld='ls -lUd */'  #list directories

alias cuc='cucumber --format pretty'

export JRUBY_OPTS="--1.9"

unsetopt correct_all
