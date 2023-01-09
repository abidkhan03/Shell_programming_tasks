#!/bin/bash

# Write a utility script to follow a deployment pipeline
# 1. First it should create three files in task2/ folder created earlier in present working directory
# 2. Create three files using touch command inside the task2/ folder
# 3. Copy the files and paste into another created folder named task2_temp/
# 4. Swap both folder names
# 5. echo before each step what is happening in the next line
# 6. Make this script task2.sh executable

# create a folder named task2
mkdir task2

# create three files inside task2 folder
touch task2/file1.txt
touch task2/file2.txt
touch task2/file3.txt

echo "file1.txt file2.txt file3.txt created"
# create a folder named task2_temp
mkdir task2_temp
echo "task2_temp $task2_temp folder created"

# copy files from task2 to task2_temp
cp task2/* task2_temp
echo "files copied from task2 to task2_temp"
# swap both folder names
mv task2 task2_temp
echo "task2 $task2 folder renamed to task2_temp and task2_temp $task2_temp folder renamed to task2"

# make this script task2.sh executable
chmod +x task2.sh
$SHELL