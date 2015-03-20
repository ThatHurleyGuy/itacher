# Itacher

This gem can be used to control http://www.globalcache.com/products/itach/ip2ir-pspecs/ devices

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'itacher'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install itacher

## Usage

```
require "itacher"

device = Device.new("192.168.1.XXX", 4998)
command = device.learn_command
puts device.send_command(command)
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/itacher/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
