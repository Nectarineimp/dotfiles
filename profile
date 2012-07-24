
# Load private variables (things that shouldn't be checked into source control)
. ~/.privates
. ~/.aliases

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

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
