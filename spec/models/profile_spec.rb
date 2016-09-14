require 'rails_helper'

describe Profile do
  it { should validate_presence_of :avatar }
  it { should belong_to :user }
  it { should have_many :images }
end
