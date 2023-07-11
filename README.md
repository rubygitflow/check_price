# CheckPrice
Simplest Application based on Roda

## About the Application
Compiled from the article https://mkdev.me/ru/posts/kak-organizovat-zapusk-ruby-prilozheniya-s-dry-system
on the pre-configured Roda [framework](https://github.com/Oreol-Group/roda_sequel_rspec_config)

## Check application
```bash
$ bundle exec rake check_price[googl,1000]
$ bundle exec rake check_price[googl,1200]
```

## Environment setup
```bash
$ bundle install
```

## Run tests
```bash
$ bin/rspec
```

## Run App
You can either set up configuration into `config/initializers/config.rb`, `config/settings/*.yml` and `config/settings.yml` or `config/settings.local.yml` before running

```bash
$ bin/puma
$ bin/console
```
or run the application with modified configuration using environment variables as well
```bash
$ RACK_ENV=test ENV__PAGINATION__PAGE_SIZE=100 bin/puma
$ RACK_ENV=test ENV__PAGINATION__PAGE_SIZE=100 bin/console
```

## HTTP-requests to the app
Use the URL port setting in `config/puma.rb` to manage multiple microservices in the same environment.
```bash
$ curl --url "http://localhost:3000" -v
$ http :3000
```

## Author
* it.Architect https://github.com/rubygitflow/check_price
