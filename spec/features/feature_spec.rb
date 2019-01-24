feature 'You should see a welcome message at the top of the page' do
  scenario 'Welcome to the birthday app to be on the homepage' do
    visit('/')
    expect(page).to have_content 'Welcome to the birthday app!!'
  end
end


feature 'The homepage asks for your name' do
  scenario 'the homepage will have the question What is your name?' do
    visit('/')
    expect(page).to have_content 'What is your name?'
  end
end
