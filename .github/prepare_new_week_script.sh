#!/bin/bash

echo "Executing script..."

# Extract new filename
#LAST_FILENAME=$(ls archive | sort -Vf | tail -n 1)
#LAST_WEEK_NUMBER=$(echo ${LAST_FILENAME} | grep -o -E "[0-9]+")
#NEW_WEEK_NUMBER=$(echo $(($LAST_WEEK_NUMBER + 2)))
#echo $NEW_WEEK_NUMBER

# Archive current week
#mv current.json archive/week$NEW_WEEK_NUMBER.json
# Move new questions to current. These questions will be displayed during the week
#mv next.json current.json
# Copy template to start adding new question for the next week
#cp template.json next.json

# Remove last line macos
#sed -i '' -e '$ d' archive/weeks.json
# Remove last line ubuntu
#sed '$d' archive/weeks.json
#sed '$d' archive/weeks.json

# Add new line
#echo '\t\t\t"week$NEW_WEEK_NUMBER.json",\n\t]\n}' >> archive/weeks.json

#git config --global user.email "swiftbeta.blog@gmail.com"
#git config --global user.name "SwiftBeta"

#git add .
#git commit -m "🤖 Week "$NEW_WEEK_NUMBER", Update questions"
#git push

#echo "Finished script..."
