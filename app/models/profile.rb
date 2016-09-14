class Image < ApplicationRecord
  belongs_to :user
  has_many :images

  validates :avatar, :presence => true
end
