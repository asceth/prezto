#
# Configures emacs aliases
#
# Authors: John Long
#


#
# Aliases
#
alias emr='systemctl --user restart emacs'
alias e="emacsclient --server-file=default -t"
alias E="SUDO_EDITOR=\"emacsclient --server-file=default -t\" sudoedit"
