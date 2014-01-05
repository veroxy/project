#/bin/bash
# Original script by Steve Rydz (https://github.com/steverydz)
# Improvements made to this script by Bob (https://github.com/rjw1)

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
PROJECTDIR="$HOME/Sites/$PROJECTNAME"

# Clones Steve Rydz's boilerplate directory
git clone git@github.com:steverydz/boilerplate.git "$PROJECTDIR"

# Removes readme and git
rm -rf $PROJECTDIR/{.git*,README.md}

# Enters directory
cd $PROJECTDIR

# All done!
echo "You're ready to rock!"
