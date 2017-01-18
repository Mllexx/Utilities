#!/bin/bash
#Just a basic script
echo "Intializing the script..."
cd  /; # move into the desired directory, change this to your target directory e.g ( /var/www/ )
fileList=$(ls -d */); #list all directories in the folder (Ignores files, gets folders only)

for f in $fileList; #loop through the list of folders found
	do 
	# execute recursive action on the each here
	
	# In this example we are getting folder size and writing to a text file
	   d=$(du -hs $f); #get the size of each folder
	   dd=${d//\/};    #remove trailing forward slashes from the text
	   echo $dd; >> /targetFolder/targetFile.txt; #write to text file

	done;
