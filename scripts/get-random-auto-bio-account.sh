#!/bin/sh

# date: 2025-01-19
# author: HstSethi
# Posix-sh script to return html of random account from short-autobiography and render it
randomAge=$(shuf -i 5-18 -n 1)

# While XMLLint does not properly support HTML5, I am using it because it is fast, and has html output
element=$(xmllint --html --htmlout  --xpath "//*[@id='age-$randomAge']" about.html 2>/dev/null)

if [ -n "$element" ]; then
    echo $element | lynx -force-html -stdin    
else
    echo "Element with id 'age-$randomAge' not found."
    exit 1
fi

