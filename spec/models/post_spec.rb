require 'rails_helper'

RSpec.describe Post, :type => :model do
    it "is a valid post name" do
    post = Post.new
    post.title = 'Why do we use github?'
    post.save

    expect(post).to be_valid
  end

  it "has content" do
    post = Post.new
    post.content = 'there should be some text here'
    post.save

    expect(post).to be_valid
  end
end
