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

feature 'The homepage should have a text box to fill in your name' do
  scenario 'under the question of what is your name there should be a text box' do
    visit('/')
    find('form').visible?
  end
end

feature 'The homepage asks for your name' do
  scenario 'the homepage will have the question When is your birthday?' do
    visit('/')
    expect(page).to have_content 'When is your birthday?'
  end
end
