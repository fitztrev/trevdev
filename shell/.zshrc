ZSH=$HOME/.oh-my-zsh

if [[ "$TERM_PROGRAM" == "iTerm.app" ]]; then
  ZSH_THEME="agnoster"
else
  ZSH_THEME="robbyrussell"
fi

plugins=(brew composer git laravel5 npm tmux vagrant)

DISABLE_AUTO_UPDATE="true"

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

source $HOME/trevdev/shell/.aliases
source $HOME/trevdev/shell/.vars
[[ -s ~/.local-aliases ]] && source ~/.local-aliases

## Update $PATH for Homebrew
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

## Autojump
type brew >/dev/null 2>&1 && [[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

prompt_context () { }

export NVM_DIR="~/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
