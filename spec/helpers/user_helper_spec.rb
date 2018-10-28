# frozen_string_literal: true

require 'rails_helper'

def create_post
  click_link 'New image'
  fill_in 'Description', with: "This is a description"
  attach_file('Image', Rails.root + 'public/uploads/image_post/image/6/Screen_Shot_2018-09-11_at_23.26.44.png')
  click_button 'Create Image post'
end
def user_sign_in
  visit '/users/sign_in'
  fill_in 'user_email', with: @user.email
  fill_in 'user_password', with: @user.password
  click_button 'Log in'
end
def user2_sign_in
  visit '/users/sign_in'
  fill_in 'user_email', with: @user_2.email
  fill_in 'user_password', with: @user_2.password
  click_button 'Log in'
end
