#!/usr/bin/env bash

bold=$(tput bold)
italic=$(tput sitm)

echo "\n${bold}Installing HomeBrew...\n"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" &&
brew analytics off

echo "\n${bold}Installing macOS applications...\n"
brew cask install visual-studio-code
brew cask install azure-data-studio
brew cask install docker
brew cask install google-chrome
brew cask install postman 
brew cask install zoomus
brew cask install discord
brew cask install slack
brew cask install clockify
brew cask install clipy

echo "\n${bold}Installing Brew packages...\n"
brew install git
brew install node 
brew install zsh-completions 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "\n${bold}Tapping Brew drivers and installing...\n"
brew tap homebrew/cask-drivers
brew cask install logitech-options
brew cask install ugreen-ax88179-usb-ethernet-driver

# Fix for '[oh-my-zsh] Insecure completion-dependent directories detected'
compaudit | xargs chmod g-w,o-w

# Change Oh-My-ZHS theme to ys
sed -i '' 's/robbyrussell/ys/' ~/.zshrc

echo "\n${bold}Installing ZSH plugins...\n"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sed -i '' 's/plugins=(.*)/plugins=(git docker zsh-autosuggestions zsh-syntax-highlighting)/' ~/.zshrc

# Setup Terminal
echo "\n${bold}Please change the following settings in Terminal\n"
echo 'Terminal -> Preferences -> Profiles -> Cog -> Import'
echo 'Terminal -> Preferences -> Profiles -> Cog -> Default (James)'
read -n 1 -r -s -p $"${italic}Press enter to continue..."

# Change macOS Settings
echo "\n${bold}Please change the following macOS settings\n"
echo 'System Preferences -> Displays -> Night Shift -> Schedule: Sunset to Sunrise'
echo 'System Preferences -> Security & Privacy -> Use your Apple Watch to unlock apps and your Mac'
read -n 1 -r -s -p $"${italic}Press enter to continue..."

# Change Clockify Settings
echo "\n${bold}Please change the following Clockify settings\n"
echo 'Preferences -> General -> Show in Dock -> off'
echo 'Preferences -> General -> Show timer in Status bar'
echo 'Preferences -> General -> Show timer in Status bar -> HH:MM'
echo 'Preferences -> General -> Show project in Status bar'
read -n 1 -r -s -p $"${italic}Press enter to continue..."

# Intall Visual Studio Code Plugins 
echo "\n${bold}Please login to VS code to sync extensions and settings\n"
read -n 1 -r -s -p $"${italic}Press enter to continue..."

# Intall Azure Data Studio Plugins 
echo "\n${bold}Please install the following Azure Data Studio extensions\n"
echo 'PostgreSQL'
echo 'Visual Studio IntelliCode'
read -n 1 -r -s -p $"${italic}Press enter to continue..."

# Intall Google Chrome Plugins
echo "\n${bold}Please install the following Chrome extensions\n"
echo 'React Developer Tools -> https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi'
read -n 1 -r -s -p $"${italic}Press enter to continue..."

# Set git username and email
echo "\n${bold}Setting up git...\n"
read -p 'Please enter a global username: ' uservar
read -p 'Please enter a global email: ' emailvar

git config --global user.name "${uservar}"
git config --global user.email "${emailvar}"

# Generate SSH keys for GitHub
echo "\n${bold}Creating SSH keys for GitHub...\n"
ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa
echo
cat ~/.ssh/id_rsa.pub
echo "\nCopy key into https://github.com/settings/keys"
