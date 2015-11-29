# Development Workflow
1. Make sure the following tools are installed
    * [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
    * [Docker](https://docs.docker.com/v1.8/installation/)
    * [Docker-compose](https://docs.docker.com/compose/install/)
2. Fork the following apps into your github account
    * [django-app](https://github.com/devwf/django-app)
3. RUN `./dev-init <your github username>`

# Frequently Used Commands
* `docker-compose up -d` Run containers in background (detached mode)
* `docker-compose stop` gracefully shutdown the container
* `docker-compose rm -f <app>` Remove stopped container of <app>
* `docker-compose rm -f` Remove ALL stopped service containers
* `docker-compose logs <app>` view output from container of <app>
* `docker-compose run <app> <command>` Run a one-off command on a service.
* `docker-compose run <app> /bin/bash` Get a shell prompt on <app>
* `docker-compose run <django-app> python manage.py <django args>` 
    Run django administration on a django-app container.
* `docker-compose ps` List containers.
* `docker-compose build --pull <app>` Build newer version of image from hub
* `docker-compose restart` restart running containers

### Container/Image Cleanup
* `docker rm $(docker ps -aq)` Removes all stopped containers.
* `docker rmi -f $(docker images | grep "^<none>" | awk '{print $3}')` Remove
  all untagged images.
