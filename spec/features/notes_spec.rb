require 'rails_helper'

feature 'visit notes' do
  scenario 'notes page' do
    visit '/notes'
    expect(page).to have_content 'Login Here'
  end

end