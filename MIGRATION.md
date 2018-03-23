# Info sulle migration

In laravel le tabelle di database si definiscono tramite le migration

```bash
php artisan make:migration nome_migration --create=nome_tabella
```

Modificare la migration appena creata e applicarla con:

```bash
php artisan migrate
```

se si spacca crudbooster

```bash
php artisan crudbooster:update
```