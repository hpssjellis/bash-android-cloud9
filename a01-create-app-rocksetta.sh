#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash a06-rocksetta-setup-android.sh
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
--activity $wow4 \
--package com.example.$wow4





#android update project --path .

#ant

android update project --name $wow4 --target android-$myNum --path $wow4

cd $wow4

ant clean

ant debug

cd bin


printf "\n\n<a href='$wow4/bin/$wow4-debug.apk'>$wow4/bin/$wow4-debug.apk</a><br>"  >> /home/ubuntu/workspace/index.html



ls -l


echo "Look for you new android $wow4/bin $wow4-debug.apk"
echo "rightclick run index.html, then preview-preview running application to view webpage with .apk"


echo "Or just click this link and open the web page"

y="${HOSTNAME//[^-]}"
echo "$y"
echo "${#y}"
echo $HOSTNAME

if [ ${#y} = 4 ]; then
    IFS=- read var1 var2 var3 var4 var5 <<< $HOSTNAME
    echo "http://$var2-$var3-$var4-$var1.c9users.io"
fi


if [ ${#y} = 3 ]; then
    IFS=- read var1 var2 var3 var4 <<< $HOSTNAME
    echo "http://$var2-$var3-$var1.c9users.io"
fi

if [ ${#y} = 2 ]; then
    IFS=- read var1 var2 var3 <<< $HOSTNAME
    echo "http://$var2-$var1.c9users.io"
fi


