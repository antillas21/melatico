# Melatico

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'melatico'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install melatico

## Usage

```ruby
Melatico.draw
#=> [17, 31, 39, 44, 47, 48]

# Want to generate a full sheet?
Melatico.draw(5)
# [
#   [16, 19, 46, 49, 51, 53],
#   [1, 7, 34, 42, 43, 50],
#   [2, 16, 26, 27, 35, 48],
#   [18, 28, 35, 45, 52, 53],
#   [20, 23, 27, 33, 35, 50]
# ]

# Or generate any number of combinations
Melatico.draw(3)
# [
#   [4, 5, 8, 12, 41, 48],
#   [17, 32, 35, 38, 51, 54],
#   [2, 36, 40, 41, 45, 52]
# ]
```


## Contributing

1. Fork it ( https://github.com/[my-github-username]/melatico/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

