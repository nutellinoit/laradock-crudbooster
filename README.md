# Laradock + Crudbooster

## Come installare

Avviare la soluzione, posizionarsi nella cartella ```laradock``` e lanciare

```bash
docker-compose up -d
```

questo comando avvia tutti i container e crea la cartella /crm nella root del progetto

Entrare nel container di supporto, workspace, per eseguire tutti i vari comandi di composer

```bash
docker-compose exec --user=laradock workspace bash
```

Installare laravel

```bash
composer create-project laravel/laravel .
``` 

```bash
composer require crocodicstudio/crudbooster
```

Aggiungere la seguente classe ai providers nel file,  **config/app.php**

```php
crocodicstudio\crudbooster\CRUDBoosterServiceProvider::class,
```

Impostare i setting del database nel file ```crm/.env``` in questo modo (per connetterlo direttamente al container percona appena creato)

```
DB_CONNECTION=mysql
DB_HOST=percona
DB_PORT=3306
DB_DATABASE=homestead
DB_USERNAME=homestead
DB_PASSWORD=secret
```

Lanciare l'install di crudbooster
```bash
php artisan crudbooster:install
```

Vi verrà chiesto se avete impostato le credenziali db, date "yes"

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

Poi vi chiederà che tipo di installazione fare, dategli il comando 0

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


## Credenziali di default
```php
/admin/login
```
- default email : admin@crudbooster.com
- default password : 123456


## Come aggiornare

Aprire il terminale.
```bash
composer require crocodicstudio/crudbooster
```

```bash
php artisan crudbooster:update
```

## Se si è spaccato qualcosa di crudbooster:

```bash
php artisan crudbooster:update
```
