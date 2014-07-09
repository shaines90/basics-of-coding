require 'rails_helper'

RSpec.describe Post, :type => :model do

  before :each do
    @valid_post = Post.new
    @valid_post.title = "Why do we use github?"
    @valid_post.content = "There should be some content"
  end

  it "is valid with a title and content" do
    @valid_post.save
    expect(@valid_post).to be_valid
  end

  it "is not valid without a title" do
    @valid_post.title = ""
    expect(@valid_post).to be_invalid
  end

  it "is invalid without content" do
    @valid_post.content = ""
    expect(@valid_post).to be_invalid
  end

end
