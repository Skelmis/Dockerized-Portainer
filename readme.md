Dockerized Portainer
---

Built off https://github.com/portainer/portainer-compose except its
fully customized to my needs and includes example github actions for 
deploying images on commit to albiet old urls.


#### Setup

1. Clone this repo to your server.
2. Install `docker` and `docker-compose`
3. Pick either `traefik` or `nginx` and `cd` into that directory
4. Open the compose file

If using `nginx`:

- Replace `{url}` with a comma seperated string of the urls you wish to serve portainer on
  - I.e `VIRTUAL_HOST=portainer.mydomain.com`

If using `traefik`:

- Replace `Your email here` with your email
- Replace `traefik.yourdomain.com` with your domain
- Replace `portainer.yourdomain.com` with your domain
- Replace `See Readme` with the output of the below command

```shell
> sudo apt install apache2-utils
> echo $(htpasswd -nb <username> <password>) | sed -e s/\\$/\\$\\$/g
```

5. `docker-compose up -d`

Should be it.
