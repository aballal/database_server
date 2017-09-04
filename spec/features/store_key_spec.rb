feature 'Storing key and value' do
  def app
    DatabaseServer
  end

  it 'can visit the post route /set with a key and value' do
    post '/set?somekey=somevalue'
    expect(last_response.status).to eq(200)
  end
end
