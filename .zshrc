autoload -U compinit
compinit

autoload -Uz vcs_info
precmd () { vcs_info }
zstyle ':vcs_info:*' formats "%b"
setopt prompt_subst
# prompt
PROMPT='%~ @${vcs_info_msg_0_} $ '

export HOMEBREW_NO_AUTO_UPDATE=1

PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
