autoload -U compinit
compinit

export LSCOLORS=gxfxxxxxcxxxxxxxxxgxgx
export LS_COLORS='di=01;36:ln=01;35:ex=01;32'
zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'ex=32'

# mac os
export CLICOLOR=1
# linux os
alias ls='ls --color'

autoload -Uz vcs_info
precmd () { vcs_info }
zstyle ':vcs_info:*' formats "%b"
setopt prompt_subst
# prompt
PROMPT='
%m: %~ @${vcs_info_msg_0_} 
$ '

# only mac os
export HOMEBREW_NO_AUTO_UPDATE=1

# jEnv
# mac os
export JENV_ROOT="$HOME/.jenv"
if [ -d "${JENV_ROOT}" ]; then
  export PATH="$JENV_ROOT/bin:$PATH"
  eval "$(jenv init -)"
fi
# linux os
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# git
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

