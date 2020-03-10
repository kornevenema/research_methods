#!/bin/bash

# check if the file exists in the current directory, otherwise download it.
if ! [ -f ./rug_wiki.txt ] ; then
    wget -O "rug_wiki.txt" "https://nl.wikipedia.org//w/index.php?title=Rijksuniversiteit_Groningen&action=raw"
fi

# find every occurence of "de". 
# The options -woi filter out tags and .PHP items in the rug_wiki.txt file
grep -woi "de" rug_wiki.txt | wc -l
