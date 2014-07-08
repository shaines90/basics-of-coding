require 'rails_helper'

feature 'browse tags' do
  scenario 'browse by tag name' do
    visit '/browse'
    expect(page).to have_content 'Browse'
  end

end
