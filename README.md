# Shrine::Storage::Memory

Provides in-memory storage for Shrine.

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

## License

[MIT](/LICENSE.txt)
