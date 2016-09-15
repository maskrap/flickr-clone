require 'rails_helper'

describe "the uploading a new image process" do
  it "uploads a new image" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user, :run_callbacks => false)
    visit new_user_image_path(user)
    attach_file 'Photo', 'spec/asset_specs/images/cat.jpg'
    fill_in 'Title', :with => 'cute cat'
    fill_in 'Tag', :with => 'cute'
    click_on 'Create Image'
    expect(page).to have_content 'HELLO'
  end
end
