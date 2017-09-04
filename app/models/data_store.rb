class DataStore
  def initialize
    @data_hash = Hash.new
  end

  def keys
    data_hash.keys
  end

  private
  attr_reader :data_hash
end
