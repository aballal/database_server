feature 'Visiting Database Server' do
  scenario 'visiting local host on port 9292' do
    visit 'http://localhost:9292/'
    expect(page).to have_content 'Database Server Tech Test'
  end
end
