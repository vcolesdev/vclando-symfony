# VC Lando Symfony Starter

Description here.

## Features

- Custom `lando.yml` config.
- Php 8.2 and Apache
- Appserver, PhpMyAdmin, Mailhog, and Node services
- Custom Tooling

## Install

1. Step 1.
2. Step 2.
3. Step 3.

## Post Install

### 1. Create a Home or Index Controller for your application.

Lando comes with its own helper `console` utility, which you can use to perform Symfony operations.

`lando console make:controller DefaultController`

- You can replace `DefaultController` with whatever you like.  
- Update the route annotation path in your controller to `/` if you'd like it to serve as your homepage or application index.

### 2. Connect the database to Lando.

In order for our database to work, we need to connect it to Symfony.  View your database information by using:

`lando info`

This should display relevant information about your app, including your database credentials.  By default, it should look like below:

```
host: database
user: symfony
pass: symfony
dbname: symfony
```

Navigate to your `.env` file and replace `DATABASE_URL` with the info supplied by `lando info`.

#### Old Cred

`DATABASE_URL="postgresql://app:!ChangeMe!@127.0.0.1:5432/app?serverVersion=15&charset=utf8"`

#### New Cred

`DATABASE_URL="mysql://symfony:symfony@database:3306/symfony?serverVersion=5.7"
`

## Troubleshoot

Issues you may run into during installation.

### "Lando should never be run as root like ever!"

- See post [Add Current User to Docker Group on MacOS](https://stackoverflow.com/questions/70369278/how-to-add-the-current-user-to-the-docker-group-on-macos)

## Helpful Links

- [Get Lando](https://lando.dev/)
- [Get Symfony](https://symfony.com/)
- [Documentation - Lando](https://docs.lando.dev/)
- [Documentation - Lando Symfony Plugin](https://docs.lando.dev/symfony/)
- [Documentation - Getting Started with Symfony](https://symfony.com/doc/current/setup.html)

## Thank You

Thank you for your interest in VC Lando Symfony.  This is a work in progress!