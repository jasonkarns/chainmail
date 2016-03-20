# Chainmail

Declare command-style methods chainable

Methods should perform a command (side effect) or return a value, never both.
This is Command/Query Separation. However, it is convenient to allow command
methods to return `self` such that they are chainable. This module does just
that. Declare which methods are chainable by name, and they are wrapped to
return self.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'chainmail'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chainmail

## Usage

TODO: Write usage instructions here
