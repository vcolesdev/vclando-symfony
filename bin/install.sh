#!/bin/bash
# Install script.
APPLICATION=application
SYMFONY_LOCK=application/symfony.lock

echo "Let's get this show on the road! Starting ./bin/install.sh."

# Check for application directory.
if [ -d "$APPLICATION" ]; then

    # Check if application dir is empty.
    if [ "$(ls -A $APPLICATION)" ];
      then
        # Application dir exists, so continue...
        echo "Application dir already exists and is not empty.  Checking for symfony.lock file..."

        # Check for symfony.lock file.
        if [ -f "$SYMFONY_LOCK" ]; then echo "$SYMFONY_LOCK file found. Symfony is already installed." && exit; fi

    	else
    	  # Symfony install doesn't exist or is broken.
    	  echo "$APPLICATION is empty, or contains a broken Symfony installation.  Removing application dir and starting fresh..."

    	  # Remove application dir.
    	  rm -Rf $APPLICATION
    fi

else
    # If no application dir is found, proceed.
    echo "Creating application directory and moving into it..."
fi

# Create application dir and move into it.
mkdir $APPLICATION && cd $APPLICATION || exit

# Create new Symfony project in application directory.
rm -rf tmp && composer create-project symfony/skeleton:"6.2.*" tmp && cp -r tmp/. .
echo "Done installing Symfony 6.2!  Moving on to Composer packages..."

# Install Symfony dependencies.
composer require webapp
composer require annotations encore
echo "Symfony dependencies installed successfully!"

# Generate our first IndexController.
echo "Generating our first IndexController at src/Controller..."
php bin/console make:controller IndexController
echo "IndexController created!"

# Exit application dir
cd ../