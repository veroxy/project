#/bin/bash
PROJECTNAME=$1
PROJECTDIR="~/Documents/$PROJECTNAME"

# Creates directory with desired project name
mkdir $PROJECTDIR

# Enters directory
cd $PROJECTDIR

# Clones Steve Rydz's boilerplate directory
git clone git@github.com:steverydz/boilerplate.git

# Enters boilerplate directory
cd boilerplate

# Moves boilerplate contents to root
mv * ..

# Goes back to root directory
cd ..

# Removes empty boilerplate directory, readme and git
rm -rf boilerplate README.md .git
