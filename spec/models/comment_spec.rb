require 'rails_helper'

RSpec.describe Comment, :type => :model do

  before :each do
    @valid_comment = Comment.new
    @valid_comment.content = "There should be some content"
  end

  it "is valid with content" do
    @valid_comment.save
    expect(@valid_comment).to be_valid
  end

  it "is invalid without content" do
    @valid_comment.content = ""
    expect(@valid_comment).to be_invalid
  end

end
