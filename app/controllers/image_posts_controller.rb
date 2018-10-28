class ImagePostsController < ApplicationController
  before_action :authenticate_user!, :set_post, only: [:show, :edit, :update]
  def index
    @image_posts = ImagePost.all.order('created_at DESC')
  end

  def show
    # @image_post = ImagePost.find(params[:id])
  end

  def new
    @image_post = ImagePost.new
  end

  def edit
  end

  def create
   @image_post = ImagePost.new(post_params)
   if @image_post.save
     redirect_to image_posts_path
   else
     render :new
   end
 end

 def update
   if @image_post.update_attributes(post_params)
     redirect_to image_post_path(@image_post)
   else
     render :edit
   end
 end

 def users_posts
   @users_images = ImagePost.where(user_id: current_user.id)
 end
  #
  # def destroy
  #   @image_post.destroy
  #   respond_to do |format|
  #     format.html { redirect_to image_posts_path, notice: 'Image post was deleted.' }
  #     format.json { head :no_content }
  #   end
  # end

  private


  def post_params
    image_params = params.require(:image_post).permit(:description, :image)
    image_params.merge(user_id: current_user.id)
  end

  def set_post
    @image_post = ImagePost.find(params[:id])
  end

  def post_created_by_current_user?
    @image_post.user_id == current_user.id
  end
end
