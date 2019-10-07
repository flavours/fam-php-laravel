Flavour addon manager for laravel
=================================


This addon manager builds upon fam-php and passes each input to its parent(s) previous to its own processing.
You automatically get the functionality of fam-php executed previously to running this addon.

fam-php-laravel adds support for post-install scripts, that might be needed after installing a dependency. ::


   install:
     package: spatie/laravel-permission:v0.2.37
     post-install:
       script:
        - php artisan vendor:publish --provider="Spatie\Permission\PermissionServiceProvider" --tag="migrations"
        - php artisan vendor:publish --provider="Spatie\Permission\PermissionServiceProvider" --tag="config"


It executes all scripts added to the `post-install` entry in `app.flavour` describing the addon.



Build
-----

To build the docker container locally use ::

   docker build . -t flavour/fam-php-laravel:latest


Flavour will try to automatically detect the ideal installation scenario. Dev packages should therefore be installed only to `require-dev` and custom install scripts will prepare your environment to customize package configurations.

References
----------

Flavour CLI: https://www.npmjs.com/package/@flavour/cli
fam-php: https://gitlab.com:divio/flavour/addon-managers/fam-php
