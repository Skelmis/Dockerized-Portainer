Dockerized Portainer
---

Built off https://github.com/portainer/portainer-compose except its
fully customized to my needs and includes example github actions for 
deploying images on commit to albiet old urls.


To generate your own thing for the Traefik dashboard on line 34
use the following:
```shell
> sudo apt install apache2-utils
> echo $(htpasswd -nb <username> <password>) | sed -e s/\\$/\\$\\$/g
```