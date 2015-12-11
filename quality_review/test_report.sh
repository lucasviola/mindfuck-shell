#!/bin/bash

setup () {
	echo "Type the location of your tests: "
	read TESTS_PATH
	
	if [ -z $TESTS_PATH ]; then
		export TESTS_PATH=$PWD
	fi

	echo $TESTS_PATH
}

#echo 'Number of line on Unit tests:'
#find ~/Workspace/ongarium-rails/spec/controllers/* -name '*_spec.rb' | xargs wc -l

#echo 'Number of line on Functional tests:'
#find ~/Workspace/ongarium-rails/spec/features/ -name '*_spec.rb' | xargs wc -l
#find ~/Workspace/ongarium-rails/spec/smoke/ -name '*_spec.rb' | xargs wc -l

setup
