
# Setting PATH for JRuby 1.6.5
# The orginal version is saved in .profile.jrubysave
PATH="${PATH}:/usr/local/sbin:/Library/Frameworks/JRuby.framework/Versions/Current/bin"
export PATH

alias be="bundle exec"
alias ber="bundle exec rake"
alias bi="bundle install"
alias bl="bundle list"
alias bp="bundle package"
alias bu="bundle update"

alias son="cd ~/Code/sonian"
alias ws="cd ~/Code/sonian/sa-website"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi


export PATH=/Applications/Emacs.app/Contents/MacOS/bin:$PATH
alias emacst='emacsclient -t'

export OPSCODE_USER=sonian_devs

export PATH=~/Code/sonian/sa-chef-repo/bin:$PATH

export PATH=$PATH:/Applications/wkhtmltopdf.app/Contents/MacOS