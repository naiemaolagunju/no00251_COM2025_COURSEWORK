class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.belongs_to :artist, index: true, foreign_key: true, null: false
      t.string :name, null: false
      t.string :image
      t.string :genre, null: false
      t.text :notes
      t.boolean :favourite

      t.timestamps null: false
    end
  end
end
