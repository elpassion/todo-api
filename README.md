# README

# Setup dockerized application
## Create Postgres database
`docker-compose run web rails db:setup`

## Migrate Postgres databse
`docker-compose run web rails db:migrate`

## Run dockerized specs
`docker-compose up --build test`
