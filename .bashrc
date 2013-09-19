# set editor env
export EDITOR=/usr/bin/vim

test -s ~/.alias && . ~/.alias || true

alias isc="osc -A https://api.suse.de"

# history related stuff
export HISTCONTROL=ignoreboth
export HISTSIZE=500

if which rbenv &>/dev/null; then
  eval "$(rbenv init -)"
fi

if which keychain &>/dev/null; then
  keychain ~/.ssh/suse_jreidinger
  . ~/.keychain/$HOSTNAME-sh
  . ~/.keychain/$HOSTNAME-sh-gpg
fi
