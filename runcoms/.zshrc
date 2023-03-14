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
  # import host specific keys
  [[ -f $HOME/.config/keychain/$HOST.sh ]] && source $HOME/.config/keychain/$HOST.sh

  # import keychain-generated files
  [[ -f $HOME/.keychain/$HOST-sh ]] && source $HOME/.keychain/$HOST-sh
  [[ -f $HOME/.keychain/$HOST-sh-gpg ]] && source $HOME/.keychain/$HOST-sh-gpg
fi

fpath+=~/.zfunc

# do not abort when globbing finds no files
setopt NULL_GLOB

# go setup
export GOPATH=$HOME/.go
export PATH=$PATH:$HOME/.go/bin

# rust setup
if (( $+commands[rustc] )); then
  export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
  export PATH=$PATH:$HOME/.cargo/bin
fi

# user bin setup
export PATH=$PATH:$HOME/bin
