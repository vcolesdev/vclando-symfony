#!/bin/bash
# Unisntall script

while true; do

read -p "Remove Symfony and ALL its components? (y/n) " yn

case $yn in
  [yY] ) echo "Removing Symfony and application folder..."
    break;;
  [nN] ) echo "Abort mission! Exiting..."
    exit;;
  * ) echo "Please choose a valid response, y/n";;
esac

done

if [ -d "application" ]
  then
    rm -Rf application && echo "That's all for now, folks!  Symfony removed."
  else
    echo "No application directory found. Exiting..."
fi

