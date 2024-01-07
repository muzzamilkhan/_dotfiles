# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.config/tmux/plugins/t-smart-tmux-session-manager/bin:$PATH

# OMZ START
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="gnzh"

zstyle ':omz:update' mode auto      
zstyle ':omz:update' frequency 13

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

plugins=(
    git
	z
    ssh-agent
)

source $ZSH/oh-my-zsh.sh
# OMZ END

bindkey -v
export VISUAL=vim
export EDITOR="$VISUAL"
export CHROMIUM_BIN="/usr/bin/google-chrome"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
set -g @t-fzf-prompt '  '

if [[ -z "$TMUX" ]] ;then  
  tmux attach || tmux new
fi

alias v="nvim ."
alias vim="nvim"
alias ls="exa"
alias find="fd"
alias grep="rg"
alias ta="tmux attach"
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

xset r rate 200 60

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}
