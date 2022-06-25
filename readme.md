## Setup

1. go to `docker/nginx/certs`
2. run `mkcert *domain-name*` e.g. `mkcert wordpress.local`
3. go to `docker` dir 
4. run ./rename.sh
    - this script:
      - changes all **wp.local** occurances
      - changes **wp-local** project name in `.env` file

4. run `docker-compose up`

## Notes

To access database from client, use `mysql` instead of `localhost`
