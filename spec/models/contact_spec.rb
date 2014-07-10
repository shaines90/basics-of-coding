require 'rails_helper'

RSpec.describe Contact, :type => :model do
  it "is invalid without a name" do
    c = Contact.new
    c.email = 'simonball245@gmail.com'
    c.message = 'hello'
    c.save

    expect(c).to be_invalid
  end

  it "is invalid without a email" do
    c = Contact.new
    c.name = 'Simon'
    c.message = 'hello'
    c.save

    expect(c).to be_invalid
  end

  it "is invalid without a message" do
    c = Contact.new
    c.email = 'simonball245@gmail.com'
    c.name = 'Simon'
    c.save

    expect(c).to be_invalid
  end

  it "is valid with all fields filled in" do
    c = Contact.new
    c.email = 'simonball245@gmail.com'
    c.name = 'Simon'
    c.message = 'hello'
    c.save

    expect(c).to be_valid
  end
end
