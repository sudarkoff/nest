# set the path
export PATH=$PATH:$HOME/bin:$HOME/bin/$OSTYPE
export SRC=$HOME/src

# load zsh extensions
for extension ($HOME/bin/zsh/*.zsh) source $extension

# then load any other additional environments
for init_file ( $(find $HOME/bin -not \( -wholename $HOME/bin/init.zsh -o -path zsh -o -path .git -prune \) -name init.zsh) ) source $init_file
