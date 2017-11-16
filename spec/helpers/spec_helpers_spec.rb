require 'rails_helper'
def sign_up
  visit('/users/sign_up')
  fill_in :user_email, with: 'example@example.com'
  fill_in :user_password, with: 'hello123'
  fill_in :user_password_confirmation, with: 'hello123'
  click_button 'Sign up'
end

def add_picture
  visit('/pictures/new')
  fill_in :picture_name, with: 'KFC'
  fill_in :picture_description, with: 'Finger-licking good'
  fill_in :picture_img_url, with: 'image url'
  click_button 'Create Picture'
end