require 'rails_helper'

feature 'visit login' do
  scenario 'login page' do
    visit '/login'
    expect(page).to have_content 'Login Here'
  end

  scenario 'button exists' do
    visit '/login'
    expect(find('#login')).to have_button('submit')
  end
end
