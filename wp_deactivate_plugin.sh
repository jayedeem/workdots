#!/bin/bash

wp_deact_plugin(){
echo "Displaying list of Plugins"
wp plugin list
echo "Select a plugin to deactivate"
read plugin
wp plugin deactivate $plugin
echo "Deactivating $plugin"

}
