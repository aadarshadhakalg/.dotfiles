# Install Requirements

pacman -Syu git wget 

# Install Java

pacman -Syu jdk8-openjdk 

# Download Flutter
cd /opt
git clone git@github.com:flutter/flutter.git -b stable

# Add flutter to path
echo 'export PATH="$PATH:/opt/flutter/bin"' >> $HOME/.bashrc
source $HOME/.bashrc
sudo chmod -R 777 /opt/flutter
flutter doctor


#Download commandlinetools
cd /opt
mkdir Android/Sdk/cmdline-tools/
chmod -R 777 /opt/Android
cd /opt/Android/Sdk/cmdline-tools

# Replace url with the latest version
wget https://dl.google.com/android/repository/commandlinetools-linux-7302050_latest.zip -O tools.zip
unzip tools.zip
mv cmdline-tools/ tools/
rm tools.zip

# Add commandlinetools to path
echo 'export PATH="$PATH:/opt/Android/Sdk/cmdline-tools/tools/bin/"' >> $HOME/.bashrc
source $HOME/.bashrc

# Accept Liscenses

sdkmanager --licenses

# Download SDK and Build Tools
# Replace with latest version
sdkmanager "platform-tools"
sdkmanager "platforms;android-31"
sdkmanager "build-tools;31.0.0"

echo 'export PATH="$PATH:/opt/Android/Sdk/platform-tools/"' >> $HOME/.bashrc
source $HOME/.bashrc


# Flutter doctor to check
flutter doctor
