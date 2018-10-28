class AddPostImageToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :post_image, :string
  end
end
