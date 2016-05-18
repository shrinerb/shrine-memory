require "shrine"
require "stringio"
require "down"

class Shrine
  module Storage
    class Memory
      attr_reader :store

      def initialize(store = {})
        @store = store
      end

      def upload(io, id, *)
        store[id] = io.read
      end

      def download(id)
        Down.copy_to_tempfile(id, open(id))
      end

      def move(io, id, *)
        store[id] = io.storage.delete(io.id)
      end

      def movable?(io, id)
        io.is_a?(UploadedFile) && io.storage.is_a?(Storage::Memory)
      end

      def stream(id)
        yield read(id), read(id).length
      end

      def open(id)
        StringIO.new(store.fetch(id))
      end

      def read(id)
        store.fetch(id).dup
      end

      def exists?(id)
        store.key?(id)
      end

      def delete(id)
        store.delete(id) or raise KeyError, "key not found: #{id.inspect}"
      end

      def multi_delete(ids)
        ids.each { |id| delete(id) }
      end

      def url(id, **options)
        "memory://#{id}"
      end

      def clear!
        store.clear
      end
    end
  end
end
