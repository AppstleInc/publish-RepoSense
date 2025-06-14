#!/bin/bash

# Download RepoSense release
./get-reposense.py --release

# Export token for internal use (optional but okay to keep)
export REPOSENSE_GITHUB_TOKEN=$REPOSENSE_GITHUB_TOKEN

# Set up Git credentials using token
echo "machine github.com login $REPOSENSE_GITHUB_TOKEN password x-oauth-basic" > ~/.netrc

# Run RepoSense with config
java -jar RepoSense.jar --config ./config --output ./reposense-report
