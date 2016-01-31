#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash a03-create-gradle-rocksetta.sh
# best in cloud 9 to just right click this file and select run


#change hello-world to the name of your app and folder

echo "Enter a folder name, no spaces, no dashes, underscore allowed, for your app and folder example: helloWorld"
read wow4


ls -l /home/ubuntu/workspace/android-sdk-linux/platforms



echo "Type the number of the target your Android app is for"
echo "See above folders of installed platforms"
echo "for --target android-20    Android 4.4W.2 KitKat, type 20"
echo "for --target android-22    Android 5.1.1  Lollipop, type 22"
echo "for --target android-23    Android 6.0    Marshmallow, type 23"

read myNum



# the commands to install the platforms

#android update sdk --filter android-20 --no-ui --force   #Android 4.4W.2 KitKat
#android update sdk --filter android-22 --no-ui --force   #Android 5.1.1  Lollipop
#android update sdk --filter android-23 --no-ui --force   #Android 6.0    Marshmallow

#Good site to check
#http://socialcompare.com/en/comparison/android-versions-comparison


android create project \
--target android-$myNum \
--name $wow4 \
--path $wow4 \
--activity MainActivity \
--package com.example.$wow4 \
--gradle --gradle-version2.9.+





#android update project --path .

#ant

#android update project --name $wow4 --target android-$myNum --path $wow4

cd $wow4

#ant clean

#ant debug

chmod a+x gradlew

./gradlew assembleDebug

#cd bin


printf "\n\n<a href='$wow4/app/build/outputs/apk/$wow4-debug.apk'>$wow4/app/build/outputs/apk/$wow4-debug.apk</a><br><br>"  >> /home/ubuntu/workspace/index.html



ls -l app/build/outputs/apk


echo "Look for you new android $wow4/app/build/outputs/apk/$wow4-debug.apk"
echo "right-click run index.html, then preview-preview running application to view webpage with .apk"

echo "Setting up an alias for fast folder navigation"

printf "\n\nalias myapk='cd $wow4/platforms/android/build/outputs/apk && echo \"Your .apk file is in the $wow4/platforms/android/build/outputs/apk folder \" && pwd && echo \"The file list is\" && ls -l'"  >> ~/.profile

echo "type myapp to find your debug .apk and the time it was made"

echo "Or just click this link and open the web page"
echo ""
echo ""
echo ""

echo "http://$C9_HOSTNAME"

