#!/bin/bash
#Just a basic script
echo "Intializing the script..."
cd  /; # move into the desired directory
fileList=$(ls -d */); #list all directories in the folder

for f in $fileList; 
	do 

	d=$(du -hs $f); #get the file size of each folder
	dd=${d//\/}; #remove trailing forward slashes
	echo $dd; #>> /home/amuleke/foldersList.txt;

	done;
