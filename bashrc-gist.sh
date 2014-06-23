#!/bin/bash
if [ -f ~/.bashrc ]
then
  mv ~/.bashrc ~/$(date +%s).bashrc
fi
 
wget -q "https://gist.github.com/uda/8110123/raw/.bashrc" -O ~/.bashrc
