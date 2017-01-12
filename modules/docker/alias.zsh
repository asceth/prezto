#
# Defines Docker aliases.
#
# Author:
#   François Vantomme <akarzim@gmail.com>
#

#
# Aliases
#

# Docker
alias d='docker'

# Compose (c)
alias dc='docker-compose'
alias dcr='docker-compose run --rm'
alias dcd='docker-compose build'
alias dce='docker-compose exec'

# rm (rm)
alias drmi='docker rmi'
alias drmI='docker rmi $(docker images --filter "dangling=true" -q --no-trunc)'
alias drmC='docker rm $(docker ps -qa --no-trunc --filter "status=exited")'




