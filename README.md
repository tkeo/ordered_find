# OrderedFind

find records like AR::Base#find, keeping the same order with arguments

## Installation

Add this line to your application's Gemfile:

    gem 'ordered_find'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ordered_find

## Usage

```
SomeModel.ordered_find([1, 3, 2, 1])
=>  [#<SomeModel id: 1>, #<SomeModel id: 3>, #<SomeModel id: 2>, #<SomeModel id: 1>]
```
or
```
SomeModel.ordered_find(1, 3, 2)
```

```
SomeModel.ordered_find([1, 3, 2, nil, 1])
=> raise ActiveRecord::RecordNotFound
```

```
SomeModel.ordered_find_by_id([1, 3, 2, nil, 1])
=>  [#<SomeModel id: 1>, #<SomeModel id: 3>, #<SomeModel id: 2>, nil, #<SomeModel id: 1>]
```


## Contributing

1. Fork it ( https://github.com/tkeo/ordered_find/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
