#!/bin/sh

# inspired by https://github.com/mathiasbynens/dotfiles/blob/master/brew.sh
# and http://lapwinglabs.com/blog/hacker-guide-to-setting-up-your-mac

# Install command-line tools using Homebrew.

if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we're using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated)
# Donâ€™t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install zsh
brew install zsh

# Install more recent versions of some OSX tools.
brew install macvim
brew install homebrew/dupes/grep

binaries=(
  # soji dependencies
  brightness
  guile
  terminal-notifier

  # fix access to system clipboard from inside tmux
  reattach-to-user-namespace

  # editors
  macvim
  neovim

  # utilities
  ctags
  fpp
  git
  htop
  hub
  mackup
  the_silver_searcher
  tmux
  tree
  watch

  # development
  node
  nvm
  postgresql
  python
  python3
  rbenv
)

brew install ${binaries[@]}

# Install brew services
brew tap homebrew/boneyard

# Install Mac apps
# I don't think cask needs to be installed separately anymore
# brew install caskroom/cask/brew-cask

# Access to betas for Chrome Canary, Sublime Text, etc
brew tap caskroom/versions

casks=(
  alfred
  atom
  caffeine
  dash
  dropbox
  firefox
  flowdock
  flux
  flycut
  font-roboto
  gimp
  google-chrome
  google-drive
  heroku-toolbelt
  iterm2
  java
  mailbox
  mou
  recordit
  skitch
  slack
  soulver
  sublime-text3
  the-unarchiver
  things
  todoist
  torguard
  virtualbox
)
brew cask install ${casks[@]}

# Ensure that homebrew-cask apps are available to alfred
brew cask alfred link

# Install some fonts
brew tap caskroom/fonts

fonts=(
  font-alfa-slab-one
  font-podkova
  font-poller-one
  font-raleway
  font-roboto
  font-roboto-slab
  font-yanone-kaffeesatz
)

echo "INSTALL ZIM MANUALLY: https://github.com/Eriner/zim"
# can maybe do this with vim-plug eventually
echo "also reminder to install powerline fonts https://github.com/powerline/fonts"

