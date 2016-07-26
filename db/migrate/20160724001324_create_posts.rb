class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url
      t.text :content
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
