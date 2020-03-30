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
