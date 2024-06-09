# CodeIgniter4-Docker

## Install project

1. Download the Docker
2. Copy and rename file `env` to `.env` 
3. Setup file `.env` 
4. Download project directory and rename to `src`.
5. Start up your application by running:

```sh
# with no file .env
docker compose up -d
```

```sh
# with file .env
docker compose env-file .env up -d
```

6. Execute a command in a running container
```sh
docker exec -it ... bash
```

  - Install or update source (/var/www/html)
```sh
# Install 
composer install --no-dev
```
```sh
# Or update source
composer update
```

  - Import sql
```sh
mysql -u username -p database_name < file.sql
```

## Information 
### Server 

The version being used is PHP 7.4 (recommended, depending on your needs, you should choose larger versions) 
> [!WARNING]
> - The end of life date for PHP 7.4 was November 28, 2022.
> - The end of life date for PHP 8.0 was November 26, 2023.
> - If you are still using PHP 7.4 or 8.0, you should upgrade immediately.
> - The end of life date for PHP 8.1 will be December 31, 2025.

And requires installation of the following extensions:

- [intl](http://php.net/manual/en/intl.requirements.php)
- [mbstring](http://php.net/manual/en/mbstring.installation.php)

Additionally, make sure that the following extensions are enabled in your PHP:

- json (enabled by default - don't turn it off)
- [mysqlnd](http://php.net/manual/en/mysqlnd.install.php) if you plan to use MySQL
- [libcurl](http://php.net/manual/en/curl.requirements.php) if you plan to use the HTTP\CURLRequest library

### Database