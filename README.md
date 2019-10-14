# Shrine::Storage::Memory

Provides in-memory storage for [Shrine].

**This storage has been merged into the `shrine` gem in version 3.0.0.**

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

[Shrine]: https://github.com/shrinerb/shrine
[refile-memory]: https://github.com/refile/refile-memory
