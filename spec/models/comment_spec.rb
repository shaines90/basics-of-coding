require 'rails_helper'

RSpec.describe Comment, :type => :model do
  it "is a valid comment" do
    comment = Comment.new
    comment.content = 'This is a comment.'
    comment.save

    expect(comment).to be_valid
  end

end
