require 'rails_helper'

feature 'contact page' do
  scenario 'find contact form' do
    visit '/contact'
    expect(page).to have_content 'Contact Us'
  end

end