feature 'Storing key and value' do
  def app
    DatabaseServer
  end

  before do
    post '/set?somekey=somevalue'
  end

  it 'can visit the post route /set with a key and value' do
    expect(last_response.status).to eq(200)
  end

  it 'can store the key and value in memory' do
    expect(DataStore.get(:somekey)).to eq('somevalue')
  end
end
