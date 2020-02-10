Note: This is an exercises, if you need this functionality check Ruby flatten implementation

# Flatten
Requires an Array as param and return a flat Array

## Tests
#### Install depedencies

`bundle install`

#### Run tests

`bundle exec rake`

## Use example

```
bundle exec irb
require './lib/flatten.rb'

array = [1, [2, [[3]], 4], [3], [4, 5]]
flatten = Flatten.new
flatten.process(array)
=> [1, 2, 3, 4, 3, 4, 5]
```
