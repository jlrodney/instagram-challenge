# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UserController, type: :controller do

  before(:each) do
    @user = create(:user)
    sign_in @user
    @user_2 = create(:user_2)
  end

  describe "GET #index" do
    it "returns http success" do
      get "index"
      expect(response).to have_http_status(:success)
    end
  end
end
