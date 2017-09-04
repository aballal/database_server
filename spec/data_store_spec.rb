describe DataStore do
  subject(:data_store) { described_class.new }

  it 'has no keys to begin with' do
    expect(data_store.keys).to be_empty
  end
end
