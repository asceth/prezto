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
  /usr/bin/keychain --nogui ~/.ssh/id_rsa_code
  /usr/bin/keychain --nogui ~/.ssh/id_rsa_rfa
  /usr/bin/keychain --nogui ~/.ssh/id_rsa_clemson

  [[ -f $HOME/.keychain/$HOST-sh ]] && source $HOME/.keychain/$HOST-sh
fi

fpath+=~/.zfunc

# go setup
export GOPATH=$HOME/.go
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
export PATH=$PATH:$HOME/.go/bin:$HOME/bin
