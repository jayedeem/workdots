#!/bin/bash

wp_su(){
  echo "Enter username or email"
  read username
  wp super-admin add $username

}
