#!/bin/bash

wp_act_plugin(){
echo "Displaying list of Plugins"
wp plugin list
echo "Select a plugin to activate"
read plugin
wp plugin activate $plugin
echo "Activating $plugin"

}
