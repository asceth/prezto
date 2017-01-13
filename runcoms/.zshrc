#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
if command -v keychain; then
  /usr/bin/keychain --nogui ~/.ssh/id_rsa
  /usr/bin/keychain --nogui ~/.ssh/id_clemson_rsa

  [[ -f $HOME/.keychain/$HOST-sh ]] && source $HOME/.keychain/$HOST-sh
fi

# go setup
export GOPATH=$HOME/.go
export PATH=$PATH:$HOME/.go/bin:$HOME/bin
