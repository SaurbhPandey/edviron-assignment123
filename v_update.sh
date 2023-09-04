#!/bin/bash

# Specify the details of the third-party repository and your repository
THIRD_PARTY_REPO="karanshukla430/edviron-assignment"
YOUR_REPO="SaurbhPandey/edviron-assignment123"
BRANCH_NAME="version_update1"

# Get the current date and time in the format YYYY-MM-DD_HH-MM-SS
DATE_TIME=$(date +"%Y-%m-%d_%H-%M-%S")

# Create the new branch name with date and time
BASE_BRANCH="main"
# NEW_BRANCH_NAME="${BRANCH_NAME}_${DATE_TIME}"
NEW_BRANCH_NAME="$BRANCH_NAME"
# git checkout master
# git checkout -b new-branch

# Check if the branch already exists
if git rev-parse --verify "$NEW_BRANCH_NAME" >/dev/null 2>&1; then
    echo "Branch '$NEW_BRANCH_NAME' already exists. Skipping."

else
    git checkout main
    git pull origin main
    git checkout -b "$NEW_BRANCH_NAME"
    echo "Created branch '$NEW_BRANCH_NAME'."
    git remote add source https://github.com/karanshukla430/edviron-assignment.git
    # PREVIOUS_COMMIT=$(git rev-parse HEAD@{1})
    git pull source main
    # Get the commit hashes of the previous commit and current HEAD
    # PREVIOUS_COMMIT=$(git rev-parse HEAD@{1})
    # CURRENT_COMMIT=$(git rev-parse HEAD)

    # Check if changes have been made
    # if ! git diff --quiet master; then
        # Changes detected
        # Commit
        git add .
        git commit -m "version update '$DATE_TIME'"
        git push origin $NEW_BRANCH_NAME
        echo "package.json updated and changes pushed to branch '$NEW_BRANCH_NAME'."

        git checkout main
        # git checkout -b new-branch
        # git push --set-upstream origin new-branch

      
    # else
    #     git checkout master
    #     git branch -D $NEW_BRANCH_NAME
    #     echo "No changes detected. Pull request will not be created."
    # fi
fi