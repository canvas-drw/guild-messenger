# README

## Ruby version

`2.5.1`

## System dependencies

```
brew install postgresql
brew install redis
```

## Configuration

```
bundle install
rake db:setup
rails server
```

## Testing

Use `guard` for automated test suite or `rspec .` for a one off run
