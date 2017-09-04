describe DataStore do
  subject(:data_store) { described_class.new }
  let(:key) { :name }
  let(:value) { 'A Ballal' }

  it 'has no keys to begin with' do
    expect(data_store.keys).to be_empty
  end

  it 'can set and get a key' do
    data_store.set(key, value)
    expect(data_store.get(key)).to eq value
  end
end
