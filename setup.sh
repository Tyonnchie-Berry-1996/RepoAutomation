#!/bin/bash

set -e

echo "Setting Up An Easier Life For You"

cd /home/src/RepoAutomation

mv git-pull.sh /home/src

mv git-remote-fetch /home/src

chmod +x /home/src/git-pull.sh

chmod +x /home/src/git-remote-fetch

rm -rf /home/src/RepoAutomation

echo "All scripts have been moved to /home/src and have been set to executable"
