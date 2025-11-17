#!/bin/bash

# Change directory to the directory containing your git repos
cd /home/src

for repo in */; do
    # Print the name of the repo
    echo "Found repository: $repo"
  # Navigate into the repo
    cd "$repo"

    # Check if it's a git repository
    if [ -d ".git" ]; then
        # Fetch updates for the repository
        echo "Fetching updates for $repo"
        git pull
    else
        echo "$repo is not a git repository"
    fi

    # Go back to the parent directory
    cd ..


done

