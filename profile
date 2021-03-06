
# Load private variables (things that shouldn't be checked into source control)
. ~/.privates
. ~/.aliases

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# This resolves issues install the mysql, postgres, and other gems
# with native non universal binary extensions
export ARCHFLAGS='-arch x86_64'
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export M2_HOME=~/maven/current
export M2=$M2_HOME/bin
export CLOJURESCRIPT_HOME=/Users/calebphillips/Code/cljs/clojurescript
export JRUBY_OPTS="--1.9"
export STORM_HOME=~/storm/current

PATH=/usr/local/bin:$PATH
PATH=$M2:$PATH
PATH=$PATH:~/bin
PATH=$PATH:$CLOJURESCRIPT_HOME/bin
PATH=$PATH:$STORM_HOME/bin
export PATH

# For building older rubies on Mountain Lion
# http://coderwall.com/p/dtbuqg
export CC=/usr/local/bin/gcc-4.2
