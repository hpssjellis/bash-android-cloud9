#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash a07-live-update-WARNING.sh
#  best in cloud 9 to just right click this file and select run

#  sudo ln -s /home/wow /home/ubuntu/workspace/my-wow       

echo "WARNING THIS MAY CHANGE YOUR WORKSPACE, IF UNSURE EXIT THIS TERMINAL"
echo "This bash file will update the workspace from the github repository at "
echo "https://github.com/hpssjellis/online-android-sdk-cloud9-live-update"

sudo git clone https://github.com/hpssjellis/online-android-sdk-cloud9-live-update /home/ubuntu
