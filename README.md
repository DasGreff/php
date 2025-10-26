# PHP 8.3 Apache avec Extensions

Image PHP 8.3.14 avec Apache, PDO MySQL, ImageMagick et SSH client. 
UID/GID 1000 pour www-data.

## Contenu

- **Base** : PHP 8.3.14 + Apache sur Debian Bookworm
- **Extensions** : `pdo_mysql`, `imagick`  
- **Outils** : ImageMagick, OpenSSH client
- **User** : www-data (UID/GID 1000)

## Utilisation

```bash
# Basique
docker run -d -p 80:80 votre-registry/php-apache:latest

# Avec volume
docker run -d -p 80:80 -v $(pwd)/src:/var/www/html votre-registry/php-apache:latest
```

### Docker Compose

```yaml
services:
  web:
    image: votre-registry/php-apache:latest
    ports:
      - "80:80"
    volumes:
      - ./src:/var/www/html
```

## Cas d'usage

- Applications web PHP avec MySQL et traitement d'images
- CMS (WordPress, Drupal) avec gestion d'images
- APIs REST avec upload d'images
- Environnements de développement