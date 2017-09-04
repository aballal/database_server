feature 'Visiting Database Server' do
  scenario 'visiting local host on port 4000' do
    visit 'http://localhost:4000/'
    expect(page).to have_content 'Database Server Tech Test'
  end
end
