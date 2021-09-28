#!/bin/bash

restore_file(){
	echo "Branch to restore from? "
	read branch
	echo "File to restore? "
	read filename
	git checkout $branch -- $filename
}
