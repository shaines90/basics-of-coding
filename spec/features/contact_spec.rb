require 'rails_helper'

feature 'contact us' do
  scenario 'submit the form' do
    visit '/contact'

    within('#contactForm') do
      fill_in 'name', :with => 'Simon'
      fill_in 'email', :with => 'simonball245@gmail.com'
      fill_in 'message', :with => 'Hello, this is a message.'
      click_on 'Send'
    end

    expect(current_path).to eq '/contact'
    expect(page).to have_content 'Thank You!'
  end

end