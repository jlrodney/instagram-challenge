class WelcomeController < ApplicationController

  def index
    if user_signed_in?
      @image_posts = ImagePost.all.reverse
      render 'image_posts/index'
    end
  end

end
