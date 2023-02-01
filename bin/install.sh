#!/bin/bash
# Install script.

echo "Let's get this show on the road! Starting ./bin/install.sh."

if [ -d "application" ]
then
    echo "Application already exists.  Skipping..." && exit
else
    echo "Creating application directory and moving into it..."
fi

mkdir application && cd application || exit

# Create new Symfony project in application directory.
rm -rf tmp && composer create-project symfony/skeleton:"6.2.*" tmp && cp -r tmp/. .
echo "Done installing Symfony 6.2!  Moving on to Composer packages..."

# Install Symfony dependencies
composer require webapp
composer require annotations
echo "Symfony dependencies installed successfully!"