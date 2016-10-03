#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Make ZSH the default shell environment
chsh -s $(which zsh)

# Install Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Install global Composer packages
# But install prestissimo first so it's just quickier for the rest
/usr/local/bin/composer global require hirak/prestissimo
/usr/local/bin/composer global require laravel/installer laravel/lumen-installer squizlabs/php_codesniffer phpmd/phpmd laravel/valet

# Install global Node packages
npm install -g browser-sync

# Install Laravel Valet
valet install

# Create a Projets directory
mkdir $HOME/Projets

# Configure Valet in the project directory
(cd $HOME/Sites && valet park)

# Set OS X preferences
# We will run this last because this will reload the shell
source .osx
