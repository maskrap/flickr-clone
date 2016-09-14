class Image < ActiveRecord::Base
  belongs_to :user

  has_attached_file :photo, :styles => {:medium => "300x300>"}, :default_url => "http://library.sandiegozoo.org/factsheets/capybara/images/capybara.jpg"

  validates :title, :presence => true
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
