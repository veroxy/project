#/bin/bash


PROJECTNAME=$1
PROJECTDIR="~/Documents/$PROJECTNAME"

# Creates directory with desired project name
mkdir $PROJECTDIR

# Enters directory

# Clones Steve Rydz's boilerplate directory
git clone git@github.com:steverydz/boilerplate.git $PROJECTDIR


# Removes readme and git
rm -rf $PROJECTDIR/{.git,README.md}
