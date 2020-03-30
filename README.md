# Ping
This is a simple Rails engine that provides a health check endpoint you can use for load balancer
health check, external health checks, or anything else.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'ping'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install ping
```

## Usage
By default this will return a status `:ok`, but you can configure it to exercise other services you
might have to include those in the health. For example, it might be good to run `User.first` to
ensure your database connection is healthy. You can do that by creating an initializer with content
similar to:

```ruby
Ping.configure do |config|
  config.add_check :database, -> { User.first }
end
```

This will now include the health of the database in the status code and the output of the endpoint.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
