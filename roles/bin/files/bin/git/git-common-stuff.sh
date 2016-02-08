get_current_branch() {
   local REF NAME
   REF=`git symbolic-ref HEAD 2> /dev/null`
   NAME=${REF##refs/heads/}

   echo $NAME
}

get_repo_name() {
   git config --get remote.origin.url | sed 's/.*\/\([a-zA-Z0-9_-]*\)\.git$/\1/'
}

error() {
   echo $1
   exit 1
}

