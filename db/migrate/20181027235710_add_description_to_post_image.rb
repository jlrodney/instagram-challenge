class AddDescriptionToPostImage < ActiveRecord::Migration[5.2]
  def change
    add_column :image_posts, :description, :string
  end
end
