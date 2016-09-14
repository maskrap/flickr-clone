class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :images
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable

has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "https://pbs.twimg.com/profile_images/601627261280722944/fSw32Fgs.jpg"
validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
