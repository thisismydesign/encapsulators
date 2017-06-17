# Encapsulators

#### Collection of practical functions to be used with the 'encapsulate' gem.

| Branch | Status |
| ------ | ------ |
| Release | [![Build Status](https://travis-ci.org/thisismydesign/encapsulators.svg?branch=release)](https://travis-ci.org/thisismydesign/encapsulators)   [![Coverage Status](https://coveralls.io/repos/github/thisismydesign/encapsulators/badge.svg?branch=release)](https://coveralls.io/github/thisismydesign/encapsulators?branch=release)   [![Gem Version](https://badge.fury.io/rb/encapsulators.svg)](https://badge.fury.io/rb/encapsulators)   [![Total Downloads](http://ruby-gem-downloads-badge.herokuapp.com/encapsulators?type=total)](https://rubygems.org/gems/encapsulators) |
| Development | [![Build Status](https://travis-ci.org/thisismydesign/encapsulators.svg?branch=master)](https://travis-ci.org/thisismydesign/encapsulators)   [![Coverage Status](https://coveralls.io/repos/github/thisismydesign/encapsulators/badge.svg?branch=master)](https://coveralls.io/github/thisismydesign/encapsulators?branch=master) |

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'encapsulators'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install encapsulators

## Usage

See the [encapsulate](https://github.com/thisismydesign/encapsulate) gem.

```ruby
require 'encapsulate'
require 'encapsulators'

def base_function
  # ...
end

Encapsulate.run callback: base_function, with: [Encapsulators.user_interaction_before_return, Encapsulators.exception_handling]
```

## Feedback

Any feedback is much appreciated.

I can only tailor this project to fit use-cases I know about - which are usually my own ones. If you find that this might be the right direction to solve your problem too but you find that it's suboptimal or lacks features don't hesitate to contact me.

Please let me know if you make use of this project so that I can prioritize further efforts.

## Development

This gem is developed using Bundler conventions. A good overview can be found [here](http://bundler.io/v1.14/guides/creating_gem.html).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/thisismydesign/encapsulators.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
