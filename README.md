# Symfony ##
Docker Image with Apache + PHP + Composer + Postfix

Includes:
- MongoDb extension
- npm
- bower
- grunt
- ruby
- compass

## Example configuration ##

`docker-compose.yml`

### Development ###

    app:
        image: xhttpdev/docker-symfony:dev
        ports:
            - "80:80"
        volumes:
            - /var/www/myapp:/var/www/html
        environment:
            docker_mail_domain: "mydomain.com"

### Production ###

No Volume available

    app:
        image: xhttpdev/docker-symfony:latest
        ports:
            - "80:80"
        environment:
            docker_mail_domain: "mydomain.com"
