# bash-install-android-sdk-auto-app-create-on-cloud9
using bash to automate the Android-SDK install specific to cloud9 and then create a debug Hello-Worled App and Access webpage for Android 4.4.0 Kitkat, can also do Android versions 5.1 and 6.0




Jan 29, 2016

Just testing the gradle build bash file

Jan 24, 2016

Fast steps:

1. right-click setup.sh then select run (watch for yes/no, type y then click enter, happens several times during the install) 

1. right-click index.html then select "run"

1. from the menu "preview" --> Preview Running Application" 

1. Look at the URL and load it on your Phone (set for KitKat Android 4.4)




Note. To make your own Android App. 

Bash a01-create-app-rocksetta.sh 

or right click a01-create-app-rocksetta.sh then type a folder name.

Enjoy!



.

.

.

.

.

.

What is really happening(longer version):

Use cloud 9 https://c9.io to install this repository then run setup.sh

bash setup.sh

(I just right click setup.sh and select run)

The bash file should:
1. install java dependencies
2. install android sdk 4.4
3. install gradle
4. create and App
5. ant or gradle build the app
6. auto update index.html with a link to the build .apk


Then load a webpage that gives your phone access to the app for testing (emulators suck!)

1. index.html right click and select run

1. menu preview - preview running application

1. set your Android 4.4 phone to the URL

1. set your phone security to unknown sources

1. install app





Note: unless you set a version number you may have to fully delete the App to be able to install the next version.
