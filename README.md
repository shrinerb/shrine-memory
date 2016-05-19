# Shrine::Storage::Memory

Provides in-memory storage for [Shrine].

This storage shouldn't be used in production, but it is handy to use in tests.

## Installation

```ruby
gem "shrine-memory"
```

## Usage

```rb
require "shrine/storage/memory"

Shrine.storages[:cache] = Shrine::Storage::Memory.new
```

## Inspiration

This gem was inspired by [refile-memory].

## License

[MIT](/LICENSE.txt)

[Shrine]: https://github.com/janko-m/shrine
[refile-memory]: https://github.com/refile/refile-memory
