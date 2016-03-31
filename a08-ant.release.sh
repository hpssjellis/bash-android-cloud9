
#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash a07-release-apk-WARNING.sh
# best in cloud 9 to just right click this file and select run


echo "How to make a release Android .apk"
echo "Warning your keystore file must be kept secret which is almost impossible to do on a free Cloud9 account"
echo "Enter the name of the folder for the app you wish to make a release version"
read myFolder

cd /home/ubuntu/workspace/$myFolder

ant clean

ant release

#more needed
