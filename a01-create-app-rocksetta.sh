#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash a06-rocksetta-setup-android.sh
# best in cloud 9 to just right click this file and select run


#change hello-world to the name of your app and folder

echo "Enter a folder name, no spaces, no dashes, underscore allowed, for your app and folder example: helloWorld"
read wow4

echo "Note: --target android-20 is for Android 4.4.0 running Kitkat"
echo "android 5.1.1 and 6.0 have been installed but you must change the below target to "
echo "--target android-22     for Android 5.1.1   Lollipop"
echo "--target android-23     for Android 6.0   Marshmallow"
echo "Note the target command occurs twice, Save the file with ctrl-S"
echo "if you need a specific Android version then copy the following line into a terminal with the correct number"

echo "android update sdk --filter android-22 --no-ui --force "

echo "To find the names or numbers you can type"
echo "android list sdk"


android create project \
--target android-20 \
--name $wow4 \
--path $wow4 \
--activity $wow4 \
--package com.example.$wow4





#android update project --path .

#ant

android update project --name $wow4 --target android-20 --path $wow4

cd $wow4

ant clean

ant debug

cd bin


printf "\n\n<a href='$wow4/bin/$wow4-debug.apk'>$wow4/bin/$wow4-debug.apk</a><br>"  >> /home/ubuntu/workspace/index.html



ls -l


echo "Look for you new android $wow4/bin $wow4-debug.apk"
echo "rightclick run index.html, then preview-preview running application to view webpage with .apk"
