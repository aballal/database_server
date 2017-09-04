feature 'Storing key and value' do
  def app
    DatabaseServer
  end

  before do
    post '/set?somekey=somevalue'
  end

  after do
    DataStore.instance.instance_variable_set(:@data_hash, {})
  end

  scenario 'can visit the post route /set with a key and value' do
    expect(last_response.status).to eq(200)
  end

  scenario 'can store the key and value in memory' do
    expect(DataStore.instance.get('somekey')).to eq('somevalue')
  end
end
