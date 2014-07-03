require 'rails_helper'

feature 'convert the url' do
  scenario 'Form exists' do
    visit '/'
    expect(find('#login')).to have_button('Submit')
  end

  scenario 'Get the converted URL' do
    visit '/'
    within('#login') do
      fill_in 'email', :with => 'sophia.haines@gmail.com'
      fill_in 'password', :with => '1234'
      click_on 'Submit'
    end
    expect(current_path).to eq('/url')
  end

  scenario 'login text field' do
    visit '/'
    expect(page).to have_css('input')
    end
end
