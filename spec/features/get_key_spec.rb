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

  scenario 'can visit the get route /get with a key' do
    expect(last_response.status).to eq(200)
  end

  scenario 'can retrieve the value of the key' do
    expect(last_response.body).to eq('somevalue')
  end
end
