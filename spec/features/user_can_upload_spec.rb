require 'rails_helper'

RSpec.feature 'Upload', type: :feature do

  scenario 'Can upload photos with a description' do
    @user = create(:user)
    user_sign_in
    click_link 'New image'
    fill_in 'Description', with: "This is a description"
    attach_file('Image', Rails.root + 'public/uploads/image_post/image/6/Screen_Shot_2018-09-11_at_23.26.44.png')
    click_button 'Create Image post'
    expect(page).to have_content("This is a description")
  end

  scenario 'Can edit photos' do
    @user = create(:user)
    user_sign_in
    create_post
    # within(id='image_post_1') do
    click_link "Edit"
    # end
    fill_in "Description", with: "hello"
    attach_file('Image', Rails.root + 'public/uploads/image_post/image/6/Screen_Shot_2018-09-11_at_23.26.44.png')
    click_button "Update Image post"
    expect(page).to have_content("hello")
  end

  scenario 'Cannot edit someone elses photos' do
    @user = create(:user)
    @user_2 = create(:user_2)
    user_sign_in
    create_post
    click_link "Logout"
    user2_sign_in
    expect(page).to have_link("Edit")
  end
end
