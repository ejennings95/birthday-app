feature 'You should see a welcome message at the top of the page' do
  scenario 'Welcome to the birthday app to be on the homepage' do
    visit('/')
    expect(page).to have_content 'Welcome to the birthday app!'
  end
end
