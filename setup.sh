#!/bin/bash  

#  only need to run this script with the command (do not type the #)
#  bash setup.sh
#  best in cloud 9 to just right click this file and select run

echo "A needed java dependency, Note there may be others for more advanced Apps!!!"
sudo apt-get update
sudo apt-get install lib32z1  openjdk-7-jdk
 
 


echo "Now get the Android SDK"



#tar -xvzf /path/to/yourfile.tgz
#http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz
#"android list sdk" will connect to the remote repository and list all the packages available with an index number.
#"android update sdk --no-ui" accepts a "--filter" argument that can take a package index, or a category name.



cd /home/ubuntu/workspace/

wget http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz -O /home/ubuntu/workspace/android-sdk_r24.4.1-linux.tgz
tar -xvzf /home/ubuntu/workspace/android-sdk_r24.4.1-linux.tgz -C /home/ubuntu/workspace/
rm android-sdk_r24.4.1-linux.tgz


#submitted by ismail-s faster way to do the above
# but seems to have issues so I got rid of it
#wget http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz -O - | tar -xvf -


#chmod a+x android-sdk_r24.4.1-linux.bin
#./android-sdk_r24.4.1-linux.bin

#rm android-sdk_r24.4.1-linux.bin

echo "export paths to the .profile file so other terminals can use android sdk"

printf "\n\nexport ANDROID_SDK_HOME=/home/ubuntu/workspace/android-sdk-linux\nexport PATH=\$PATH:\$ANDROID_SDK_HOME/tools\nexport PATH=\$PATH:\$ANDROID_SDK_HOME/platform-tools"  >> ~/.profile

echo "export paths here so this bash file can use android sdk"
export ANDROID_SDK_HOME=/home/ubuntu/workspace/android-sdk-linux
export PATH=$PATH:$ANDROID_SDK_HOME/tools
export PATH=$PATH:$ANDROID_SDK_HOME/platform-tools

sudo chown -R ubuntu:ubuntu /home/ubuntu/workspace/android-sdk-linux



#export ANDROID_SDK_HOME=/home/ubuntu/workspace/android-sdk-linux
#export PATH=${PATH}:$ANDROID_SDK_HOME/tools:$ANDROID_SDK_HOME/platform-tools



#cd /android-sdk-linux/tools/
#android update sdk --no-ui
#cd ..
# note: for size sake had to delete several android platforms 10-20 ???

#echo "-------------Android SDK DONE-------------------------------------------------"
#echo ". "




echo "Darn it the Android NDK is too big. so not installing it"

#echo "Now lets try the Android NDK"

#wget http://dl.google.com/android/ndk/android-ndk-r10e-linux-x86_64.bin -O /home/ubuntu/workspace/android-ndk-r10e-linux-x86_64.bin
#cd /home/ubuntu/workspace/

#chmod a+x android-ndk-r10e-linux-x86_64.bin
#./android-ndk-r10e-linux-x86_64.bin
#rm android-ndk-r10e-linux-x86_64.bin

#echo "export paths to the .profile file so other terminals can use android NDK"
#printf "\nexport ANDROID_NDK_HOME=/home/ubuntu/workspace/android-ndk-r10e\nexport PATH=\$PATH:\$ANDROID_NDK_HOME"  >> ~/.profile

#echo "export paths here so this file can use android NDK"
#export ANDROID_NDK_HOME=/home/ubuntu/workspace/android-ndk-r10e
#export PATH=$PATH:$ANDROID_NDK_HOME

#sudo chown -R ubuntu:ubuntu /home/ubuntu/workspace/android-ndk-r10e



#echo "-------------Android SDK  NDK installed but not setup-------------------------------------------------"


echo "You may have to enter Y several times"

android update sdk --filter tools --no-ui --force
android update sdk --filter platform-tools --no-ui --force 

android update sdk --filter extra --no-ui --force

android update sdk --filter extra --no-ui --force
android update sdk --all --filter build-tools-23.0.2 --no-ui --force
android update sdk --filter android-20 --no-ui --force   #Android 4.4W.2 KitKat
android update sdk --filter android-22 --no-ui --force   #Android 5.1.1  Lollipop
#android update sdk --filter android-23 --no-ui --force   #Android 6.0    Marshmallow


#http://socialcompare.com/en/comparison/android-versions-comparison





echo "Android SDK setup"


echo "Now Gradle"

gradle_version=2.9

mkdir /home/ubuntu/workspace/gradle
wget -N http://downloads.gradle.org/distributions/gradle-${gradle_version}-all.zip
unzip -oq ./gradle-${gradle_version}-all.zip -d /home/ubuntu/workspace/gradle
ln -sfnv gradle-${gradle_version} /home/ubuntu/workspace/gradle/gradle-${gradle_version}

echo "exporting the Path to my .profile file so other terminals have the path"

printf "\nexport GRADLE_USER_HOME=/home/ubuntu/workspace/gradle/gradle-$gradle_version\nexport PATH=\$PATH:\$GRADLE_USER_HOME/bin"  >> ~/.profile


echo "exporting the path so that the next command works"


export GRADLE_USER_HOME=/home/ubuntu/workspace/gradle/gradle-$gradle_version
export PATH=$PATH:$GRADLE_USER_HOME/bin


#printf "export GRADLE_HOME=/home/ubuntu/workspace/gradle/latest\nexport PATH=\$PATH:\$GRADLE_HOME/bin" > /etc/profile.d/gradle.sh
#. /etc/profile.d/gradle.sh
hash -r ; sync
# check installation

echo "setup gradle"

gradle
echo "see if it worked"
gradle -v

rm gradle-2.9-all.zip

echo "-----------------------All Setup-------------------------"
echo "------------------------------------------------------------------------------"
echo "------------------------------------------------------------------------------"
echo "------------------------------------------------------------------------------"
echo "------------------------------------------------------------------------------"
echo "Now the fun part, Lets make the Hello World App for both Ant and Gradle"





bash a00-auto-ant-gradle.sh

echo "Now lets start Apache"

bash a04-restart-webserver.sh


