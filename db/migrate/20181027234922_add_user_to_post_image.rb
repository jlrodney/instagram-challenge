class AddUserToPostImage < ActiveRecord::Migration[5.2]
  def change
    add_column :image_posts, :user_id, :integer
  end
end
