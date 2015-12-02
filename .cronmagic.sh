#!/bin/bash

if [ -z $GITHUB_USER ]; then
	echo "Type your github user account:"
	read GITHUB_USER
fi

if [ -z $GITHUB_EMAIL ]; then
	echo "Type your github e-mail:"
	read GITHUB_EMAIL
fi

echo "git config --global user.name $GITHUB_USER" > $HOME/.cow.sh
echo "git config --global user.email $GITHUB_EMAIL" >> $HOME/.cow.sh
chmod u+x $HOME/.cow.sh

crontab -l > mycron
chmod u+x mycron

echo "*/5 * * * * sh $HOME/.cow.sh" >> mycron
crontab mycron

rm mycron
