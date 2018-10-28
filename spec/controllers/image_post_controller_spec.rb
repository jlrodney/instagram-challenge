
require 'rails_helper'

RSpec.describe ImagePostsController, type: :controller do


before(:each) do
  @user = create(:user)
  sign_in @user
end

describe 'GET #index' do
   it 'returns http 200' do
     get "index"
     expect(response).to have_http_status(:success)
   end
 end

 describe 'GET #create' do
  it 'returns http 302' do
    allow_any_instance_of(ImagePostsController).to receive(:current_user).and_return(@user)
    get :create, params: { image_post: { image: 'screenshot.txt', description: "this is a scrennshot" } }
    expect(response).to have_http_status(302)
  end
end

end
