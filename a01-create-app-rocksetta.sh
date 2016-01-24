#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash a06-rocksetta-setup-android.sh
# best in cloud 9 to just right click this file and select run


#change hello-world to the name of your app and folder

MY-APP-FOLDER=hello-world





android create project \
--target android-20 \
--name my$MY-APP-FOLDER \
--path $MY-APP-FOLDER \
--activity myActivity$MY-APP-FOLDER \
--package com.example.$MY-APP-FOLDER





#android update project --path .

#ant

android update project --name my$MY-APP-FOLDER --target android-20 --path $MY-APP-FOLDER

cd $MY-APP-FOLDER

ant clean

ant debug


ls


echo "Look for you new android my$MY-APP-FOLDER debug.apk"
