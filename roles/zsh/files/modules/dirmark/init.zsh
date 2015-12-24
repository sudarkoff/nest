#
# Directory bookmarking (dirmarking) and navigation functions
#
# Authors:
#   George Sudarkoff <george@sudarkoff.com>
#

# Return if requirements are not found.
if [[ "$OSTYPE" != (darwin|linux)* ]]; then
  return 1
fi

# activate a virtual env if it's present
function activate_venv () {
    if [ -d .venv ]; then
        . .venv/bin/activate
    elif [ "$VIRTUAL_ENV" != "" ]; then
        deactivate
    fi
}

# jump to a dirmark or $SRC/directory (save previous location in the stack)
# (use popd or @ without arguments to go back)
# Ex.: @ doc
function @ () {
    if [ -z $1 ]; then
        eval "popd && activate_venv";
    else
        local str="\$mm_$1";
        eval "[ -n \"$str\" ] && pushd \"$str\" && activate_venv";
        # Dirmark doesn't exist?
        if [ $? -ne 0 ]; then
            # See if there is a directory with this name in $SRC
            if [ -d "$SRC/$1" ]; then
                cd "$SRC/$1" && activate_venv
            fi
        fi
    fi
}

# add new dirmark (or override the existing one) for the specified or current directory
function m () {
    local DIR="${2:-$(pwd)}"
    if [ -d $DIR ]; then
        eval mm_$1=$DIR
    fi
}

# remove dirmark
function - () {
   eval unset mm_$1;
}
