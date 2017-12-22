class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.string :description
      t.text :image_data

      t.timestamps
    end
  end
end
