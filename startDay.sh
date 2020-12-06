#!/bin/bash
# hehehehe bash i steal mostly hehehe

if [[ $# != 1 ]];then
    echo Usage ./startDay.sh D
    exit
fi

mkdir day$1
# maybe do some template copying here? (once i know how rust works hehe)
echo -e "# Day $1\n\n## Lessons Learned\n\n## Prompt\n\n" >> day$1/README.md
curl -b 'session=53616c7465645f5f0790246363e6722ea5c33071a70cafa28ee89df071a2f174acdafdc6759a0f2d083e4bddeaf26226' https://adventofcode.com/2020/day/$1/input >> day$1/input.txt
cp template.rs day$1/day$1.rs