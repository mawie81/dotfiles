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
brew install jesseduffield/lazygit/lazygit


# Casks
brew install --cask 1password
brew install --cask iterm2
brew install --cask google-chrome
brew install --cask firefox
brew install --cask visual-studio-code
brew install --cask fork
brew install --cask intellij-idea
brew install --cask sequel-ace
brew install --cask mattermost
brew install --cask docker
brew install --cask gpg-suite
brew install --cask postman
brew install --cask robo-3t
brew install --cask keepingyouawake
brew install --cask raycast
brew install --cask ngrok
brew install --cask vivaldi
brew install --cask microsoft-teams
brew install --cask microsoft-outlook
brew install --cask warp

# Remove outdated versions from the cellar.
brew cleanup
