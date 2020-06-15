#
# Initialize user's ~/bin environment if present
#
# Authors:
#   George Sudarkoff <george@sudarkoff.com>
#

# Return if requirements are not found.
if [[ "$OSTYPE" != (darwin|linux)* ]]; then
  return 1
fi

if [ -d $HOME/bin/ ]; then
  if [ "$(ls -A $HOME/bin/init.zsh)" ]; then
    source $HOME/bin/init.zsh
  fi
fi

