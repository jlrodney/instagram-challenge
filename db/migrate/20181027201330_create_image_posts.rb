class CreateImagePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :image_posts do |t|
      t.text :description
      t.string :image
      t.timestamps
    end
  end
end
