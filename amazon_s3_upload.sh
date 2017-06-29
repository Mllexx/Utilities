#!/bin/bash

################################################################################
# 		     			AMAZON S3 File Upload Script			        	   #
#																			   #
#   This script relies on the Amazon CLI to connect to S3 and Upload files	   #
#	So to use it, you have to use to make sure you have installed the Amazon   #
#	CLI on your machine.													   #
#																			   #
#																			   #
#	The script loops through a folder and picks the files matching	the        #
#	parameters provided and uploads them to s3       						   #
#																			   #
################################################################################

for f in filepath"$(date +%Y%m%d)".txt;
do
echo "Invoking awscli for upload...";
time aws s3 cp $f s3://bucketpath/;
echo "Upload complete, now moving files to local warehouse..."
mv $f  /backupfolder/;
echo "Files succesfully uploaded to S3 and moved to  /backupfolder/";
done;

##################################################################
#                     Time for some cleanup                      #
##################################################################
echo "Hi John Doe, The file uploads completed successfully." | mail -s "File Uploads" john.doe@example.com



