require 'rails_helper'

RSpec.describe Tags, :type => :model do
  it "is a valid tag name" do
    tags = Tags.new
    tags.name = 'jQuery'
    tags.save

    expect(tags).to be_valid
  end

  it "is a valid tag color" do
    tags = Tags.new
    tags.color = 'blue'
    tags.save

    expect(tags).to be_valid
  end
end
