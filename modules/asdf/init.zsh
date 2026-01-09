#
# Configures asdf version manager.
#

#
# Authors: John Long <john.long@asceth.com>
#

# Load asdf into the shell session.
# if [[ -s "$HOME/.asdf/asdf.sh" ]]; then
#   source "$HOME/.asdf/asdf.sh"
# fi
#
# if (( $+commands[vg] )); then
#   eval "$(vg eval --shell zsh)"
# fi

export ASDF_DATA_DIR="$HOME/.asdf"
export PATH="$ASDF_DATA_DIR/shims:$PATH"
