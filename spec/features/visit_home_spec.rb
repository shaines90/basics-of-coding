require 'rails_helper'

feature 'visit the site' do
  scenario 'home page' do
    visit '/'
    expect(page).to have_content('Contact')
  end

end

