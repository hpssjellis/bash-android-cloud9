#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash a06-rocksetta-setup-android.sh
# best in cloud 9 to just right click this file and select run


#change hello-world to the name of your app and folder

echo "Enter a name in lowercase, no spaces, no dash, for your app and folder example: my_hello_world"
read wow4




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



ls


echo "Look for you new android $wow4/bin $wow4-debug.apk"
echo "rightclick run index.html, then preview-preview running application to view webpage with .apk"
