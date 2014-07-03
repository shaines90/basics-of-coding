require 'rails_helper'

RSpec.describe Url, :type => :model do
  it "is valid with a url" do
    url = Url.new
    url.originial = 'sophia.haines@gmail.com'
    url.save

    expect(url).to be_valid
  end
end
