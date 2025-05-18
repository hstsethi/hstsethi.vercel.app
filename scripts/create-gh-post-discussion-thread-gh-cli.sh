#!/bin/bash
if [ $# -ne 2 ]; then 
    echo "Error: Need exactly two arguments"
    exit 1
fi

gh issue create --repo "https://github.com/hstsethi/hstsethi.vercel.app" --title="[Discussion]$1" --label="Discussion" --body="You can read article [here]($2)"

