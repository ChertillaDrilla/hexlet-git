#1/bin/bash
PATH=$1
STRING=$2
NEW_STRING=$3
sed 's/$STRING/$NEW_STRING/g' README.md
DATE=$(ls -l --time-style=long-iso README.md | awk '{print " - " $5, " - " $6, " - " $7;}')
echo "$PATH - $DATE" >> txt.log 
