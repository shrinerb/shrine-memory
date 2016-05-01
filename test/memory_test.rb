require "test_helper"
require "shrine/storage/linter"

describe Shrine::Storage::Memory do
  before do
    @memory = Shrine::Storage::Memory.new
    shrine = Class.new(Shrine)
    shrine.storages[:memory] = @memory
    @uploader = shrine.new(:memory)
  end

  it "passes the linter" do
    Shrine::Storage::Linter.call(@memory)
  end

  describe "#delete" do
    it "raises an error when file is not found" do
      assert_raises(KeyError) { @memory.delete("foo") }
    end
  end

  describe "#multi_delete" do
    it "raises an error when file is not found" do
      assert_raises(KeyError) { @memory.multi_delete(["foo"]) }
    end
  end
end
