class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :profile_img, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :profile_img, :content_type => /\Aimage\/.*\Z/
  validates :first_name, presence:true
  validates :last_name, presence:true
  validates :bio, presence:true
  validates :phone, presence:true
  validates :username, presence:true

end
