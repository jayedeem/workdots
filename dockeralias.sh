#!/bin/bash

#Dockerized Sites - Runs docker compose up and starts the server from root
alias dockersites="cd /Users/andrew.cacayuran/ecomm/dockerize" #change your path
#These following 2 commands can be ran anywhere
alias start-mm="dockersites && ns && npm run start:mm"
alias start-um="dockersites && ns && npm run start:um"

alias dcu='docker-compose up -d'
alias dcd='docker-compose down'

# The following commands can be ran anywhere within the docker container - Must be up


#Update DBs
#Example usage updateDB mm.sql
alias updateDB:mm="docker exec -i database mysql -uroot -ppassword mintmobile <"
alias updateDB:um="docker exec -i database mysql -uroot -ppassword ultramobile <"
alias start:plum="docker exec -i plum_web /bin/bash -c 'cd /var/www/html/plum/wp-content/themes/plum && yarn run dev'"
alias plumTerm="docker exec -it plum_web /bin/bash"
