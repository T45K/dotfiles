source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
autoload -U compinit
compinit

source <(kubectl completion zsh)

export LSCOLORS=gxfxxxxxcxxxxxxxxxgxgx
export LS_COLORS='di=01;36:ln=01;35:ex=01;32'
zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'ex=32'

# mac os
export CLICOLOR=1

autoload -Uz vcs_info
precmd () { vcs_info }
zstyle ':vcs_info:*' formats "%b"
setopt prompt_subst
# prompt
PROMPT='
%~ @${vcs_info_msg_0_}
$ '

# only mac os
export HOMEBREW_NO_AUTO_UPDATE=1

# jEnv
# mac os
export PATH="$JENV_ROOT/bin:$PATH"
eval "$(jenv init -)"

alias rm='trash -F'

alias k=kubectl
compdef __start_kubectl k

# git
alias g='git'
alias gcm='git cm'
alias gco='git co'
alias gpl='git pull'
alias gps='git push'
alias ga='git add'
alias gst='git status'
alias gbr='git br'
alias gct='git commit -m'
alias gcb='git cb'
alias gdamb='git damb'
alias gm='git merge'
alias gmm='git merge master'
alias gf='git fetch'
alias gmom='git merge origin/master'

alias f=fleet
alias d=docker
alias dc=docker compose
