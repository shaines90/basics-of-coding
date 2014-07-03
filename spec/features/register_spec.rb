require 'rails_helper'

feature 'visit register' do
  scenario 'register page' do
    visit '/register'
    expect(page).to have_content 'Register'
  end

end