feature 'Storing key and value' do
  def app
    DatabaseServer
  end

  after do
    DataStore.instance.instance_variable_set(:@data_hash, {})
  end

  context 'params exist' do
    scenario 'can store the key and value in memory' do
      get '/set?somekey=somevalue'
      expect(last_response.status).to eq(200)
      expect(DataStore.instance.get('somekey')).to eq('somevalue')
      expect(last_response.body).to eq('somevalue')
    end
  end

  context 'params are empty' do
    scenario 'shows a message that params are missing' do
      get '/set'
      expect(last_response.status).to eq(200)
      expect(last_response.body).to eq('Params missing')
    end
  end
end
