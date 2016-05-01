# Shrine::Storage::Memory

Provides in-memory storage for Shrine.

This storage generally shouldn't be used in real applications, but it is handy
for testing.

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
