# specify nvim dir
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export LANG=en_US.UTF-8

export EDITOR=/opt/homebrew/bin/nvim


# alias config

alias cd="z"
alias ls="eza --icons=always"
alias ll="ls -al"
alias nv="nvim"
alias la="tree"

# git alias
alias g="git"
alias gmj="gitmoji -c"
alias gst="git status"
alias glog="git log --graph --topo-order --pretty='%w(100,0,6)%C(yellow)%h%C(bold)%C(black)%d %C(cyan)%ar %C(green)%an%n%C(bold)%C(white)%s %N' --abbrev-commit"
alias gdiff="git diff"
alias gbranch="git branch"
alias gadd="git add"
alias gpush="git push"
alias gpull="git pull"

# dirs alias
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

# export variables

export PATH="/opt/homebrew/opt/mysql-client@8.0/bin:$PATH"
export STARSHIP_CONFIG="$HOME/.config/starship.toml"

HISTFILE=$HOME/.zsh_history
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# eval config

source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

export GEM_HOME="$HOME/.gem"
export PATH="$HOME/.flutter/3.29.2/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="/opt/homebrew/lib/ruby/gems/3.4.0/bin:$GEM_HOME/bin:$PATH"

export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$ANDROID_HOME/tools/latest/bin:$PATH"
