### ─────────────────────────────
### 기본 설정
### ─────────────────────────────
export LANG="en_US.UTF-8"
export EDITOR="/opt/homebrew/bin/nvim"

### ─────────────────────────────
### alias 설정
### ─────────────────────────────
alias cd="z"
alias ls="eza --icons=always"
alias ll="ls -al"
alias nv="nvim"
alias la="tree"
alias nvuse="nvm use"
alias cx="codex"
alias rosetta-zsh='arch -x86_64 zsh'

# git alias
alias g="git"
alias gmj="gitmoji -c"
alias gst="git status"
alias glog="git log --graph --topo-order --pretty='%C(yellow)%h%C(reset)%C(bold cyan)%d %C(cyan)%ar %C(green)%an%n%C(bold white)%s %N' --abbrev-commit"
alias gdiff="git diff"
alias gshow="git show"
alias gbranch="git branch"
alias gadd="git add"
alias gpush="git push"
alias gpull="git pull"

# 디렉토리 이동
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

# 기타
alias cx="codex"
alias mc="micro"
alias nu="nvm use"
alias ros='arch -x86_64 zsh'

### ─────────────────────────────
### history 설정
### ─────────────────────────────
export HISTFILE="$HOME/.zsh_history"
export SAVEHIST=1000
export HISTSIZE=999

setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

### ─────────────────────────────
### 경로 설정 (중복 제거)
### ─────────────────────────────
export PATH="/opt/homebrew/opt/libpq/bin:/opt/homebrew/opt/mysql-client@8.0/bin:$PATH"
export PATH="$HOME/.flutter/3.29.2/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="$HOME/.gem/bin:/opt/homebrew/lib/ruby/gems/3.4.0/bin:$PATH"
export PATH="$HOME/Library/Android/sdk/tools/latest/bin:$PATH"

export GEM_HOME="$HOME/.gem"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export STARSHIP_CONFIG="$HOME/.config/starship.toml"
export NVM_DIR="$HOME/.nvm"

### ─────────────────────────────
### brew prefix 캐싱
### ─────────────────────────────
BREW_PREFIX="$(brew --prefix)"

# zsh 플러그인
source "$BREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$BREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh"

plugins=(
    git
    docker
    kubectl
    aws
    terraform
    python
    node
    ruby
    vscode
    zsh-syntax-highlighting
    zsh-autosuggestions
)

### ─────────────────────────────
### starship & zoxide
### ─────────────────────────────
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

### nvm lazy load

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

