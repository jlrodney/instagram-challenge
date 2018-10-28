class AddPostImagesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :post_images, :json
  end
end
