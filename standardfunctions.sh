#!/bin/bash

# Must be ran within the project folder 
changePW:um() {
	echo "--DEV ONLY--"
  echo "Enter username or email address: "
  read user
  echo "Enter new password: "
  read pw
  wp user update ${user} --user_pass=${pw} 
	echo pw updated
}

activatePlugin:um(){
  echo "--DEV ONLY--"
  echo "Displaying list of Plugins"
  wp plugin list 
  echo "Select a plugin to activate"
  read plugin
  wp plugin activate $plugin 
  echo "Activating $plugin"
}

deactivatePlugin:um(){
  echo "--DEV ONLY--"
  echo "Displaying list of Plugins"
  wp plugin list
  echo "Select a plugin to deactivate"
  read plugin
  wp plugin deactivate $plugin
  echo "Activating $plugin"
}

wp_su:um(){
  echo "--DEV ONLY--"
  echo "Enter username or email"
  read username
  wp super-admin add $username
}

changePW:mm() {
	echo "--DEV ONLY--"
  echo "Enter username or email address: "
  read user
  echo "Enter new password: "
  read pw
  wp user update ${user} --user_pass=${pw} 
	echo pw updated
}

activatePlugin:mm(){
  echo "--DEV ONLY--"
  echo "Displaying list of Plugins"
  wp plugin list 
  echo "Select a plugin to activate"
  read plugin
  wp plugin activate $plugin 
  echo "Activating $plugin"
}

deactivatePlugin:mm(){
  echo "--DEV ONLY--"
  echo "Displaying list of Plugins"
  wp plugin list 
  echo "Select a plugin to deactivate"
  read plugin
  wp plugin deactivate $plugin 
  echo "Activating $plugin"
}

wp_su:mm(){
  echo "--DEV ONLY--"
  echo "Enter username or email"
  read username
  wp super-admin add $username
}

wp_su:um(){
  echo "--DEV ONLY--"
  echo "Enter username or email"
  read username
  wp super-admin add $username
}