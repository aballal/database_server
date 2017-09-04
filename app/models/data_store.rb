# Data store to store the key and value
class DataStore
  def self.instance
    @data_store ||= DataStore.new
  end

  def initialize
    @data_hash = {}
  end

  def set(key, value)
    data_hash[key] = value
  end

  def get(key)
    data_hash[key]
  end

  def keys
    data_hash.keys
  end

  private

  attr_reader :data_hash
end
