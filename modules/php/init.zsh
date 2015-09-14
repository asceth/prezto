#
# Configures PHP
#
# Authors: John Long
#

# Load RVM into the shell session.
if (( $+commands[composer] )); then

  path=($HOME/.composer/vendor/bin $path)

fi

# Return if requirements are not found.
if (( ! $+commands[composer] && ! $+commands[php] )); then
  return 1
fi

#
# Aliases
#

# General
alias phc='composer'
alias phcu='composer update'
alias phci='composer install'

alias phirb='psysh'

alias phf='php-cs-fixer fix'
