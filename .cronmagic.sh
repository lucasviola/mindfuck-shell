#!/bin/bash

echo "git config --global user.name lucasviola" > $HOME/.cow.sh
echo "git config --global user.email lucasmatzenbacher@gmail.com" >> $HOME/.cow.sh
chmod u+x $HOME/.cow.sh

crontab -l > mycron
chmod u+x mycron

echo "*/5 * * * * sh $HOME/.cow.sh" >> mycron
crontab mycron

rm mycron
