class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.string :url
      t.string :title

      t.timestamps
    end
  end
end
