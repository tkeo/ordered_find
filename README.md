# OrderedFind

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'ordered_find'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ordered_find

## Usage

```
SomeModel.ordered_find([1, 3, 2])
=>  [#<SomeModel id: 1>, #<SomeModel id: 3>, #<SomeModel id: 2>]
```
or
```
SomeModel.ordered_find(1, 3, 2)
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/ordered_find/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
