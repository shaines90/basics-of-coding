class Post < ActiveRecord::Base
  validates_presence_of :title, :content
  belongs_to :user
  has_and_belongs_to_many :tags

end
