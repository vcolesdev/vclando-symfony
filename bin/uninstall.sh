#!/bin/bash
# Unisntall script
APPLICATION=application

# Prompt the user to remove Symfony.
while true; do
read -p "Remove Symfony and ALL its components? (y/n) " yn

# Options
case $yn in
  # If yes, remove application folder and its contents.
  [yY] ) echo "Removing Symfony and application folder..."
    break;;
  # If no, exit the application.
  [nN] ) echo "Abort mission! Exiting..."
    exit;;
  # User did not enter a valid response.
  * ) echo "Please choose a valid response, y/n";;
esac; done

# Check for application dir.
if [ -d "$APPLICATION" ]
  then
    # If application dir is found, delete it and its contents.
    rm -Rf $APPLICATION && echo "That's all for now, folks!  Symfony removed."
  else
    # Nothing to remove....
    echo "No application directory found. Exiting..."
fi