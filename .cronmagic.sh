#!/bin/bash

echo "git config --global user.name lucasviola" >> $HOME/.cow.sh
echo "git config --global user.email lucasmatzenbacher@gmail.com" >> $HOME/.cow.sh

crontab -l > mycron

echo "5 * * * * $HOME/.cow.sh" >> mycron
crontab mycron

rm mycron

