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

# install sdkman
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

# install java
sdk install java

# install quarkus
sdk install quarkus

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

# install vscode extensions
ln -s "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" /opt/homebrew/bin/code

code --install-extension steoates.autoimport
code --install-extension fractalbrew.backticks
code --install-extension openai.chatgpt
code --install-extension Catppuccin.catppuccin-vsc
code --install-extension Catppuccin.catppuccin-vsc-icons
code --install-extension mikestead.dotenv
code --install-extension maxcutlyp.dotenv-autocomplete
code --install-extension EditorConfig.EditorConfig
code --install-extension usernamehw.errorlens
code --install-extension dbaeumer.vscode-eslint
code --install-extension felipecaputo.git-project-manager
code --install-extension Hyzeta.vscode-theme-github-light
code --install-extension thomaspink.theme-github
code --install-extension GitHub.github-vscode-theme
code --install-extension eamodio.gitlens
code --install-extension GraphQL.vscode-graphql-syntax
code --install-extension wix.vscode-import-cost
code --install-extension oderwat.indent-rainbow
code --install-extension xabikos.JavaScriptSnippets
code --install-extension ms-vscode.vscode-typescript-next
code --install-extension qufiwefefwoyn.kanagawa
code --install-extension metaphore.kanagawa-vscode-color-theme
code --install-extension yzhang.markdown-all-in-one
code --install-extension DavidAnson.vscode-markdownlint
code --install-extension PKief.material-icon-theme
code --install-extension PKief.material-product-icons
code --install-extension monokai.theme-monokai-pro-vscode
code --install-extension christian-kohler.npm-intellisense
code --install-extension christian-kohler.path-intellisense
code --install-extension esbenp.prettier-vscode
code --install-extension YoavBls.pretty-ts-errors
code --install-extension Prisma.prisma
code --install-extension Gruntfuggly.todo-tree
code --install-extension pflannery.vscode-versionlens
