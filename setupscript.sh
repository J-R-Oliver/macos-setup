#!/usr/bin/env bash

# Install Homebrew
echo 'Installing HomeBrew...'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" &&
brew analytics off

# Install MacOS Applications

echo 'Installing MacOS applications...'
brew cask install visual-studio-code
brew cask install slack 
brew cask install iterm2 
brew cask install google-chrome
brew cask install postman 
brew cask install gimp

# Install Brew Packages

echo 'Installing Brew packages...'
brew install git
brew install node 
brew install postgresql 
brew install tree
brew install zsh zsh-completions 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Fix for '[oh-my-zsh] Insecure completion-dependent directories detected'
# compaudit | xargs chmod g-w,o-w

# Change Oh-My-ZHS theme to ys
sed -i '' 's/robbyrussell/ys/' ~/.zshrc

# Set git username and email
echo 'Setting up git...'
read -p 'Please enter a global username: ' uservar
read -p 'Please enter a global email: ' emailvar

git config --global user.name "${uservar}"
git config --global user.email "${emailvar}"

# Generate SSH keys for GitHub
echo 'Creating SSH keys for GitHub...'
ssh-keygen -t rsa -b 4096 -C "Git Key"
cat /usr/
echo 'Copy key into https://github.com/settings/keys'