#!/bin/bash

# Variable Declaration
PACKAGE="httpd wget unzip"
SVC="httpd"
#URL='https://www.tooplate.com/zip-templates/2130_waso_strategy.zip'
#ART_NAME='2130_waso_strategy'
TEMPDIR="/tmp/webfiles"

# Installing Dependencies
echo "###################################################"
echo "Installing packages."
echo "###################################################"
sudo yum install $PACKAGE -y > /dev/null
echo

# Start & Enable Service
echo "###################################################"
echo "Start & Enable HTTPD Service"
echo "###################################################"
sudo systemctl start $SVC
sudo systemctl enable $SVC
echo

# Creating Temp Directory
echo "###################################################"
echo "Starting Artifact Deployment"
echo "###################################################"
mkdir -p $TEMPDIR
cd $TEMPDIR
echo

wget $1 > /dev/null
unzip $2.zip > /dev/null
cp -r $2/* /var/www/html/
echo

# Bounce Service
echo "###################################################"
echo "Restarting HTTPD Service"
echo "###################################################"
sudo systemctl restart $SVC
echo

# Clean Up
echo "###################################################"
echo "Removing Temporary Files"
echo "###################################################"
rm -rf $TEMPDIR
echo

sudo systemctl status $SVC
ls /var/www/html/
~
~
~
~
"5_args-websetup.sh" 53L, 1379B  