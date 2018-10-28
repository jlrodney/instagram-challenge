class AddimagetoImagePosts < ActiveRecord::Migration[5.2]
  def change
    add_column :image_posts, :image, :string

  end
end
