
# Load private variables (things that shouldn't be checked into source control)
. ~/.privates

alias be="bundle exec"
alias ber="bundle exec rake"
alias bi="bundle install"
alias bl="bundle list"
alias bp="bundle package"
alias bu="bundle update"

alias ..="cd .."        #go to parent dir
alias ...="cd ../.."    #go to grandparent dir
alias l.='ls -d .*'     #list hidden files
alias ltr='ls -lhrt'     #extra info compared to "l"
alias lld='ls -lUd */'  #list directories

alias son="cd ~/Code/sonian"
alias ws="cd ~/Code/sonian/sa-website"

# Tried to get away from this, but it's too fast
alias gs="git status"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Toggle between using the emacs .app and attaching to an existing
# server with emacsclient based on what type of terminal we are using.
# The assumption I am using here is that xterm* is using local
# Terminal.app and wants the .app and everything else wants to use
# emacs in the terminal (in tmux for example).
if [[ $TERM =~ "^xterm" ]]; then
    alias emacs='open -a Emacs.app'
else
    alias emacs='/Applications/Emacs.app/Contents/MacOS/bin/emacsclient -t'
fi

export OPSCODE_USER=sonian_devs
export PATH=~/Code/sonian/sa-chef-repo/bin:$PATH
export PATH=$PATH:/Applications/wkhtmltopdf.app/Contents/MacOS

# This resolves issues install the mysql, postgres, and other gems
# with native non universal binary extensions
export ARCHFLAGS='-arch x86_64'
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export M2_HOME=~/maven/current
export M2=$M2_HOME/bin
export CLOJURESCRIPT_HOME=/Users/calebphillips/Code/cljs/clojurescript
export JRUBY_OPTS="--1.9"

export PATH=$M2:$PATH:~/bin:$CLOJURESCRIPT_HOME/bin
