require 'rails_helper'

describe "the creating an account process" do
  it "signs up a new user" do
    visit new_user_registration_path
    fill_in 'Email', :with => 'meaghan@gmail.com'
    fill_in 'Password', :with => 'password'
    fill_in 'Password confirmation', :with => 'password'
    click_on 'Sign up'
    expect(page).to have_content 'HELLO'
  end
end
