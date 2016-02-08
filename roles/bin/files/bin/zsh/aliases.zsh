alias llog='$HOME/bin/log'

if [ "$DROPBOX$" = "$" ]; then
  export DROPBOX=$HOME/Dropbox
fi

export DROPBOX_HOME=$DROPBOX/Users/George

m bin ~/bin
m src ~/src
m docs $HOME/Documents/writing/documents
m blog $HOME/Documents/writing/blog

