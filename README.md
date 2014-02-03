# Hazelcast::Jars

All the necessary Hazelcast jars in one place for easy access from JRuby.
Current version is: Hazelcast-3.1.4

## Installation

Add this line to your application's Gemfile:

    gem 'hazelcast-jars'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hazelcast-jars

## Usage

You can easily require the jars now like so:

````ruby
Hazelcast::Jars.client
Hazelcast::Jars.server
Hazelcast::Jars.all
````

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
