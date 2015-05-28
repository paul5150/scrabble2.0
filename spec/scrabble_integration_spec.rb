require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('scrabble path', {:type => :feature}) do
  it('enters a word and returns a score') do
    visit('/')
    fill_in('word', :with => 'dog')
    click_button('Send')
    expect(page).to have_content(5)
  end
end
