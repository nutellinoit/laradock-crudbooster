# Laradock + Crudbooster

## How to install

Start the solution, go to the ```laradock``` folder and launch

```bash
docker-compose up -d
```

this command starts all the containers and creates the / crm folder in the project root

Enter the support container, workspace, to run all the various composer commands

```bash
docker-compose exec --user=laradock workspace bash
```


Install laravel

```bash
composer create-project laravel/laravel .
```

```bash
composer require crocodicstudio/crudbooster
```


Add the following class to the providers in the file, **config/app.php**

```php
crocodicstudio\crudbooster\CRUDBoosterServiceProvider::class,
```


Set the database settings in the ```crm/.env``` file in this way (to connect it directly to the newly created percona container)

```
DB_CONNECTION=mysql
DB_HOST=percona
DB_PORT=3306
DB_DATABASE=homestead
DB_USERNAME=homestead
DB_PASSWORD=secret
```

Launch the crudbooster install
```bash
php artisan crudbooster:install
```

You will be asked if you have set up your credentials db, date "yes"

```bash

#     __________  __  ______  ____                   __
#    / ____/ __ \/ / / / __ \/ __ )____  ____  _____/ /____  _____
#   / /   / /_/ / / / / / / / __  / __ \/ __ \/ ___/ __/ _ \/ ___/
#  / /___/ _, _/ /_/ / /_/ / /_/ / /_/ / /_/ (__  ) /_/  __/ /
#  \____/_/ |_|\____/_____/_____/\____/\____/____/\__/\___/_/
#

--------- :===: Thanks for choosing CRUDBooster :==: ---------------
====================================================================
System Requirements Checking:
Laravel Version (>= 5.3.*): [Good]
PHP Version (>= 5.6.*): [Good]
Mbstring extension: [Good]
OpenSSL extension: [Good]
PDO extension: [Good]
Tokenizer extension: [Good]
XML extension: [Good]
GD extension: [Good]
PHP Fileinfo extension: [Good]
public dir is writable: [Good]
--
Installing:
I remove some default migration files from laravel...

 Do you have setting the database configuration at .env ? (yes/no) [no]:
 > yes
```

Then he will ask you what kind of installation to do, give him the command 0

```bash

Publishing CRUDBooster needs file...

 Which provider or tag's files would you like to publish?:
  [0 ] Publish files from all providers and tags listed below
  [1 ] Provider: Barryvdh\DomPDF\ServiceProvider
  [2 ] Provider: Fideloper\Proxy\TrustedProxyServiceProvider
  [3 ] Provider: Illuminate\Mail\MailServiceProvider
  [4 ] Provider: Illuminate\Notifications\NotificationServiceProvider
  [5 ] Provider: Illuminate\Pagination\PaginationServiceProvider
  [6 ] Provider: Intervention\Image\ImageServiceProviderLaravel5
  [7 ] Provider: Maatwebsite\Excel\ExcelServiceProvider
  [8 ] Provider: Unisharp\Laravelfilemanager\LaravelFilemanagerServiceProvider
  [9 ] Provider: crocodicstudio\crudbooster\CRUDBoosterServiceProvider
  [10] Tag: CBHook
  [11] Tag: cb_asset
  [12] Tag: cb_config
  [13] Tag: cb_localization
  [14] Tag: cb_migration
  [15] Tag: cb_type_components
  [16] Tag: cb_user_controller
  [17] Tag: config
  [18] Tag: laravel-mail
  [19] Tag: laravel-notifications
  [20] Tag: laravel-pagination
  [21] Tag: lfm_config
  [22] Tag: lfm_public
  [23] Tag: lfm_view
 > 0
```


## Credentials di default
```php
/admin/login
```
- default email : admin@crudbooster.com
- default password : 123456


## How to update


Open the terminal.
```bash
composer require crocodicstudio/crudbooster
```

```bash
php artisan crudbooster:update
```

## If something has been broken crudbooster:

```bash
php artisan crudbooster:update
```
