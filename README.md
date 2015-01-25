# rspec-ssltls [![Build Status](https://travis-ci.org/otahi/rspec-proxypac.png?branch=master)](https://travis-ci.org/otahi/rspec-proxypac)[![Coverage Status](https://coveralls.io/repos/otahi/rspec-proxypac/badge.png?branch=master)](https://coveralls.io/r/otahi/rspec-proxypac?branch=master)[![Code Climate](https://codeclimate.com/github/otahi/rspec-proxypac.png)](https://codeclimate.com/github/otahi/rspec-proxypac)[![Gem Version](https://badge.fury.io/rb/rspec-proxypac.png)](http://badge.fury.io/rb/rspec-proxypac)


Rspec-proxypac is an rspec plugin for easy proxy.pac testing.

## Usage

RSpec-proxypac is best described by example. First, require `rspec_proxypac` in your `spec_helper.rb`:

```ruby
# spec/spec_helper.rb
require 'rspec_proxypac'
```

Then, create a spec like this:

```ruby
require 'spec_helper'

describe 'http://www.example.com/' do
  it { is_expected.to find_proxy('http://proxy.example.org:3128/') }
end
describe 'http://www.example.org/' do
  it { is_expected.to find_proxy('DIRECT') }
end

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec-proxypac'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-proxypac

## Contributing

1. Fork it ( https://github.com/otahi/rspec-proxypac/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
