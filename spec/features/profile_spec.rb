require 'rails_helper'

feature 'visit profile' do
  scenario 'profile page' do
    visit '/profile'
    expect(page).to have_content 'My Profile'
  end

end