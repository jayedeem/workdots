#!/bin/bash

wp_pw() {
	echo "--DEV ONLY--"
  echo "Enter username or email address: "
  read id
  echo "Enter new password: "
  read pw
	wp user update ${id} --user_pass=${pw}
	echo pw updated
}
