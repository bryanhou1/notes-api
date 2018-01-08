class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :title, default: "untitled"
      t.text :text
      t.boolean :starred, default: "false"

      t.timestamps
    end
  end
end
