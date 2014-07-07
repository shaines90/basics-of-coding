require 'rails_helper'

RSpec.describe Url, :type => :model do
  it "is valid with a url" do
    url = Url.new
    url.originial = 'sophia.haines@gmail.com'
    url.save

    expect(url).to be_valid
  end

  it "is invalid if the url does not start with http" do
    url = Url.new
    url.originial = 'www.google.com'
    url.save

    expect(url.originial).to eq 'http://www.google.com'
  end
end
