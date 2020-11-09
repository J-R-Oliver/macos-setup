#!/usr/bin/env bash

echo 'Installing HomeBrew...'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" &&
brew analytics off

echo 'Installing MacOS applications...'
brew cask install visual-studio-code
brew cask install azure-data-studio
brew cask install docker
brew cask install slack 
brew cask install google-chrome
brew cask install postman 
brew cask install zoomus
brew cask install discord 
brew cask install fliqlo
brew cask install clipy
brew cask install clockify

echo 'Installing Brew packages...'
brew install git
brew install node 
brew install zsh-completions 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo 'Tapping Brew drivers and installing...'
brew tap homebrew/cask-drivers
brew cask install logitech-options
brew cask install ugreen-ax88179-usb-ethernet-driver

# Fix for '[oh-my-zsh] Insecure completion-dependent directories detected'
compaudit | xargs chmod g-w,o-w

# Change Oh-My-ZHS theme to ys
sed -i '' 's/robbyrussell/ys/' ~/.zshrc

echo 'Installing ZSH plugins...'
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sed -i '' 's/plugins=(.*)/plugins=(git docker zsh-autosuggestions zsh-syntax-highlighting)/' ~/.zshrc

# Setup Terminal
echo 'Please change the following settings in Terminal \n'
echo 'Terminal -> Preferences -> Profiles -> Cog -> Import'
echo 'Terminal -> Preferences -> Profiles -> Cog -> Default (James)'
read -n 1 -r -s -p $'Press enter to continue...\n'

# Change macOS Settings
echo 'Please change the following macOS settings \n'
echo 'System Preferences -> Displays -> Night Shift -> Schedule: Sunset to Sunrise'
echo 'System Preferences -> Desktop & Screen Saver -> Screen Saver -> Fliqlo / Start after: 5 Minutes'
echo 'System Preferences -> Energy Saver -> Battery -> Turn display off after: 1 hour 30 minutes'
echo 'System Preferences -> Energy Saver -> Power Adapter -> Turn display off after: 1 hour 30 minutes'
echo 'System Preferences -> Displays -> Night Shift -> Schedule: Sunset to Sunrise'
echo 'System Preferences -> Security & Privacy -> Use your Apple Watch to unlock apps and your Mac'
read -n 1 -r -s -p $'Press enter to continue...\n'

# Change Clipy Settings

echo 'Please change the following macOS settings \n'
echo 'Clipy -> Preferences -> Appearance -> Status Bar icon style -> <inverted>'
read -n 1 -r -s -p $'Press enter to continue...\n'

# Change Clockify Settings

echo 'Please change the following Clockify settings \n'
echo 'Preferences -> General -> Show in Dock -> off'
echo 'Preferences -> General -> Show timer in Status bar'
echo 'Preferences -> General -> Show timer in Status bar -> HH:MM'
echo 'Preferences -> General -> Show project in Status bar'
read -n 1 -r -s -p $'Press enter to continue...\n'

# Intall Visual Studio Code Plugins 

echo 'Please login to VS code to sync extensions and settings \n'
read -n 1 -r -s -p $'Press enter to continue...\n'

# Intall Azure Data Studio Plugins 

echo 'Please install the following Azure Data Studio extensions \n'
echo 'PostgreSQL'
echo 'Visual Studio IntelliCode'
read -n 1 -r -s -p $'Press enter to continue...\n'

# Intall Google Chrome Plugins

echo 'Please install the following Chrome extensions \n'
echo 'React Developer Tools -> https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi'
read -n 1 -r -s -p $'Press enter to continue...\n'

# Set git username and email
echo 'Setting up git...'
read -p 'Please enter a global username: ' uservar
read -p 'Please enter a global email: ' emailvar

git config --global user.name "${uservar}"
git config --global user.email "${emailvar}"

# Generate SSH keys for GitHub
echo 'Creating SSH keys for GitHub...'
ssh-keygen -t rsa -b 4096
cat ~/.ssh/id_rsa.pub
echo 'Copy key into https://github.com/settings/keys'
