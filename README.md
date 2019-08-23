# Flavour addon manager for laravel

Will add contents to you `app.flavour` and `composer.json` file.


This addon manager builds upon fam-php and passes each input to its parent(s) previous to its own processing.
You automatically get the functionality of fam-php executed previously to running this addon.

fam-php-laravel adds support for post-install scripts, that might be needed after installing a dependency.

```
install:
  package: spatie/laravel-permission:v0.2.37
  post-install:
    script:
     - php artisan vendor:publish --provider="Spatie\Permission\PermissionServiceProvider" --tag="migrations"
     - php artisan vendor:publish --provider="Spatie\Permission\PermissionServiceProvider" --tag="config"
```

It executes all scripts added to the `post-install` entry in `app.flavour` describing the addon.



## Build

To build the docker container locally use

```
docker build . -t flavour/fam-php-laravel:latest
```

## Add

To add a package to your project using `flavour-cli`

```
#  Add package from registry to your project
flavour add composer/package-namespace/package-name

# use a specific addon manager and a custom flavour file
flavour add  --addonmanager=flavour/fam-php-laravel --package=../test.php.flavour
```

The namespace for php packages is `composer` which has to be the first part of the package identifier.

Flavour will try to automatically detect the ideal installation scenario. Dev packages should therefore be installed only to `require-dev` and custom install scripts will prepare your environment to customize package configurations.

## Remove

Removing packages works the same way adding does

```
#  Remove package from registry to your project
flavour remove composer/package-namespace/package-name
```

## References

Flavour CLI: https://www.npmjs.com/package/@flavour/cli
fam-php: https://gitlab.com:divio/flavour/addon-managers/fam-php
