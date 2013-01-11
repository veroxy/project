#/bin/bash

if [[ -z $1 ]]
then
echo "no project name given"
exit 1
fi
if [[ ! -z $2 ]]
then
echo "you need to quote project names with a space in them"
exit 1
fi 

PROJECTNAME=$1
PROJECTDIR="$HOME/Documents/$PROJECTNAME"

# Creates directory with desired project name
mkdir -p "$PROJECTDIR"

# Enters directory

# Clones Steve Rydz's boilerplate directory
git clone git@github.com:steverydz/boilerplate.git "$PROJECTDIR"


# Removes readme and git
rm -rf "$PROJECTDIR/{.git,README.md}"
