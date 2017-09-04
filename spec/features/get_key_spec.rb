feature 'Getting key value' do
  def app
    DatabaseServer
  end

  before do
    get '/set?somekey=somevalue'
  end

  after do
    DataStore.instance.instance_variable_set(:@data_hash, {})
  end

  context 'key exists' do
    scenario 'can retrieve the value of the key' do
      get '/get?key=somekey'
      expect(last_response.status).to eq(200)
      expect(last_response.body).to eq('somevalue')
    end
  end

  context 'key does not exist' do
    scenario 'shows a message if key is not found' do
      get '/get?key=someotherkey'
      expect(last_response.status).to eq(200)
      expect(last_response.body).to eq('Key not found')
    end
  end
end
