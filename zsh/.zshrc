# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.tmux/plugins/t-smart-tmux-session-manager/bin:$PATH

# OMZ START
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="gnzh"

zstyle ':omz:update' mode auto      
zstyle ':omz:update' frequency 13

plugins=(
	git
	zsh-autosuggestions
	z
  ssh-agent
  zsh-vi-mode
)

source $ZSH/oh-my-zsh.sh
# OMZ END

bindkey -v
export VISUAL=vim
export EDITOR="$VISUAL"

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
