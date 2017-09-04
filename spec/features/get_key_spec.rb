feature 'Getting key value' do
  def app
    DatabaseServer
  end

  before do
    post '/set?somekey=somevalue'
    get '/get?key=somekey'
  end

  after do
    DataStore.instance.instance_variable_set(:@data_hash, {})
  end

  it 'can visit the get route /set with a key' do
    expect(last_response.status).to eq(200)
  end
end
