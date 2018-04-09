# Info sulle migration

In laravel, database tables are defined by migration

```bash
php artisan make:migration name_migration --create=table_name
```

Modify the newly created migration and apply it with:

```bash
php artisan migrate
```

if it breaks crudbooster

```bash
php artisan crudbooster:update
```
