# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
if [ $TERM_PROGRAM = 'iTerm.app' ]; then
  ZSH_THEME="agnoster"
else
  ZSH_THEME="robbyrussell"
fi

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew composer git laravel npm tmux vagrant)

DISABLE_AUTO_UPDATE="true"

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

source $HOME/trevdev/shell/.aliases
source $HOME/trevdev/shell/.vars
[[ -s ~/.local-aliases ]] && source ~/.local-aliases

## Update $PATH for Homebrew
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

## Update $PATH for Google App Engine
export PATH=~/dev/go_appengine:$PATH

## NVM (Node Version Manager)
[[ -s ~/.nvm/nvm.sh ]] && . ~/.nvm/nvm.sh

## Rbenv
#export RBENV_ROOT=/usr/local/var/rbenv
type rbenv >/dev/null 2>&1 && eval "$(rbenv init -)"

## Travis gem
[[ -s ~/.travis/travis.sh ]] && source ~/.travis/travis.sh

## ZSH syntax highlighting
[[ -s /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## Autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Android SDK
export PATH="/Users/tfitzgerald/android-sdk/sdk/tools:$PATH"
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home"
