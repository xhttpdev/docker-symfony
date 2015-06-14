# Symfony ##
Docker Image with Apache + PHP + Composer + Postfix

Includes:
- MongoDb extension
- npm
- bower
- grunt

## Example configuration ##

`docker-compose.yml`

    app:
        image: xhttpdev/docker-symfony
        ports:
            - "80:80"
        volumes:
            - /var/www/myapp:/var/www/html
        environment:
            docker_mail_domain: "mydomain.com"
