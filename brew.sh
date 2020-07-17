#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install stuff
brew install git
brew install openssl
brew install ant
brew install node
brew install nodenv
brew install zsh
brew install diff-so-fancy
brew install maven
brew install mongodb
brew install yarn
brew install elixir
brew install jesseduffield/lazygit/lazygit


# Casks
brew cask install 1password
brew cask install iterm2
brew cask install google-chrome
brew cask install firefox
brew cask install visual-studio-code
brew cask install fork
brew cask install intellij-idea
brew cask install sequel-pro
brew cask install mattermost
brew cask install docker
brew cask install gpg-suite
brew cask install postman
brew cask install robo-3t
brew cask install sublime-text
brew cask install vlc

# Remove outdated versions from the cellar.
brew cleanup
