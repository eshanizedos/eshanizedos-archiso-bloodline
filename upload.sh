#!/bin/bash

# Author: Eshan Roy
# Author URI : https://github.com/eshanized
# Org URI : https://github.com/eshanizedos

# Setting GitHub Username & Repository Name
USERNAME="eshanizedos"
REPO_NAME="eshanizedos-archiso-bloodline"

# Local Path
PROJECT_DIR="/home/eshanized/eshanizedos-archiso-bloodline"

# Initialize Git Directory If Not Already Initialized
cd $PROJECT_DIR
if [ ! -d .git ]; then
    git init
fi

# Add all files to the Git repository
git add .

# Commit changes
echo "Enter commit message:"
read COMMIT_MSG
git commit -m "$COMMIT_MSG"

# Add the GitHub remote repository URL
REMOTE_URL="https://github.com/$USERNAME/$REPO_NAME.git"
git remote add origin $REMOTE_URL

# Push changes to GitHub
git push -u origin master

echo "Repository Has Been Updated!"
