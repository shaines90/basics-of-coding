require 'rails_helper'

RSpec.describe User, :type => :model do
  it "is invalid if the first name is empty" do
    user = User.new
    user.last_name = 'Ball'
    user.bio = 'About yourself'
    user.save

    expect(user).to be_invalid
  end

  it "is invalid if the last name is empty" do
    user = User.new
    user.first_name = 'Simon'
    user.bio = 'About yourself'
    user.save

    expect(user).to be_invalid
  end


  it "is invalid if bio field is empty" do
    user = User.new
    user.first_name = 'Simon'
    user.last_name = 'Ball'
    user.save

    expect(user).to be_invalid
  end
end
