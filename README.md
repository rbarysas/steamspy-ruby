# steamspy-ruby [![Build Status](https://travis-ci.org/rbarysas/steamspy-ruby.svg?branch=master)](https://travis-ci.org/rbarysas/steamspy-ruby)

A Ruby interface to the [SteamSpy](https://steamspy.com/) API.

### Installation

Add this line to your application's Gemfile:

```
gem 'steamspy'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install steamspy
```

### Usage

```ruby
require 'steamspy'

steamspy = SteamSpy::Api.new

# Get application details
ss = steamspy.appdetails(730)
ss.status # => 200
ss.data   # => {...}

# Get games in genre
ss = steamspy.genre("Early Access")

# Get top 100 games by players in the last two weeks
ss = steamspy.top100in2weeks

# Get top 100 games by players since March 2009
ss = steamspy.top100forever

# Get top 100 games by owners
ss = steamspy.top100owned

# Get all games with owners data sorted by owners
ss = steamspy.all
```

More information about API could be found in the [official website](https://steamspy.com/api.php).

### License

The SteamSpy rubygem is released under the MIT license.
