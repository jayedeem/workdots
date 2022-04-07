#!/bin/bash

# The following commands can be ran anywhere within the docker container - Must be up

changePW:um() {
	echo "--DEV ONLY--"
  echo "Enter username or email address: "
  read user
  echo "Enter new password: "
  read pw
  docker exec Apache wp --path="/var/www/html/ultramobile" user update ${user} --user_pass=${pw} --allow-root
	echo pw updated
}

activatePlugin:um(){
  echo "Displaying list of Plugins"
  docker exec Apache wp --path="/var/www/html/ultramobile" plugin list --allow-root
  echo "Select a plugin to activate"
  read plugin
  docker exec Apache wp --path="/var/www/html/ultramobile" plugin activate $plugin --allow-root
  echo "Activating $plugin"
}

deactivatePlugin:um(){
  echo "Displaying list of Plugins"
  docker exec Apache wp --path="/var/www/html/ultramobile"
  echo "Select a plugin to deactivate"
  read plugin
  docker exec Apache wp --path="/var/www/html/ultramobile" plugin deactivate $plugin --allow-root
  echo "Activating $plugin"
}

wp_su:um(){
  echo "Enter username or email"
  read username
  docker exec Apache wp --path="/var/www/html/ultramobile" super-admin add $username
}

changePW:mm() {
	echo "--DEV ONLY--"
  echo "Enter username or email address: "
  read user
  echo "Enter new password: "
  read pw
  docker exec Apache wp --path="/var/www/html/mintmobile" user update ${user} --user_pass=${pw} --allow-root
	echo pw updated
}

activatePlugin:mm(){
  echo "Displaying list of Plugins"
  docker exec Apache wp --path="/var/www/html/mintmobile" plugin list --allow-root
  echo "Select a plugin to activate"
  read plugin
  docker exec Apache wp --path="/var/www/html/mintmobile" plugin activate $plugin --allow-root
  echo "Activating $plugin"
}

deactivatePlugin:mm(){
  echo "Displaying list of Plugins"
  docker exec Apache wp --path="/var/www/html/mintmobile" plugin list --allow-root
  echo "Select a plugin to deactivate"
  read plugin
  docker exec Apache wp --path="/var/www/html/mintmobile" plugin deactivate $plugin --allow-root
  echo "Activating $plugin"
}
wp_su:mm(){
  echo "Enter username or email"
  read username
  docker exec Apache wp --path="/var/www/html/mintmobile" super-admin add $username
}

wp_su:um(){
  echo "Enter username or email"
  read username
  docker exec Apache wp --path="/var/www/html/ultramobile" super-admin add $username
}