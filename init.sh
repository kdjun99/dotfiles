#!/bin/zsh

# install xcode-select
echo "install xcode command line tools\n"
xcode-select --install

# install homebrew
echo "install homebrew\n"
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo >> ~/.zprofile\n
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# install coding fonts
echo "install coding fonts\n"
brew tap homebrew/cask-fonts
brew install font-d2coding font-ibm-plex-sans-kr font-ibm-plex-mono font-powerline
brew install --cask \
  font-jetbrains-mono
  font-jetbrains-mono-nerd-font
  font-d2coding-nerd-font

# install cli tools
echo "install cli tools\n"

brew install \ 
  nvm
  eza
  tree
  libpq
  mysql-client@8.0
  git
  starship
  zoxide
  zsh-syntax-highlighting
  zsh-autosuggetions
  neovim
  codex
  gitmoji
  ruby
  gh
  rsync


# install essential apps
echo "install essential apps\n"

brew install --cask \
  orbstack
  ghostty
  visual-studio-code
  notion
  notion-calendar
  notion-mail
  raycast
  orion
  chatgpt
  datagrip
  heynote
  karabiner-elements
  adguard
  adguard-vpn


# configure git ssh
echo "create git ssh key"
ssh-keygen -t ed25519 -C "dongjunkim99@icloud.com" -f ~/.ssh/id_personal

ssh-add ~/.ssh/id_personal

# setup gh
echo "login to gh\n"
gh auth login

echo "setupgit\n"
gh auth setup-git


# clone dotfiles
echo "clone dotfiles\n"
gh repo clone kdjun99/dotfiles

# copy config files
echo "sync ~/.config from dotfiles\n"
# (1) ~/.config 디렉터리가 없으면 생성
mkdir -p ~/.config

# (2) ~/dotfiles/.config 내부의 모든 파일(숨김 포함)을 ~/.config 으로 복사
rsync -av --no-perms ~/dotfiles/.config/ ~/.config/

rsync -av --no-perms ~/dotfiles/.zshrc ~/.zshrc


# install gem packages
echo "install gem packages\n"
sudo gem install jekyll
sudo gem install bundler

# dev 디렉토리 생성
echo "create dev directory\n"
mkdir -p ~/dev

# docker-compose dev 디렉토리로 복사
rsync -av --no-perms ~/dotfiles/docker-compose.yml ~/dev/docker-compose.yml


